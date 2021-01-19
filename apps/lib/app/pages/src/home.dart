import 'package:apps/app/widgets/widgets.dart';
import 'package:apps/data/entities/entities.dart';
import 'package:apps/domain/models/models.dart';
import 'package:apps/shared/shared.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

/// home -> shows all news articles based on user choice
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<BaseArticle> _articles = [];
  int _currentNav = 0;
  final List<BottomNavItem> _navItems = [
    BottomNavItem(icon: kHomeIcon, label: 'Home'),
    BottomNavItem(icon: kSearchIcon, label: 'Search'),
    BottomNavItem(icon: kNotificationIcon, label: 'Notifications'),
    BottomNavItem(icon: kSettingsIcon, label: 'Settings'),
  ];

  @override
  void initState() {
    super.initState();
    _fetchNews();
  }

  @override
  Widget build(BuildContext context) {
    var kTheme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: kSpacingX24),
          child: Stack(
            fit: StackFit.expand,
            children: [
              /// content
              Positioned.fill(
                child: CustomScrollView(
                  slivers: [
                    SliverList(
                      delegate: SliverChildListDelegate.fixed(
                        [
                          /// todo -> build tabs

                          /// articles list
                          if (_articles.isEmpty) ...{
                            Container(
                              height: SizeConfig.screenHeight,
                              width: SizeConfig.screenWidth,
                              alignment: Alignment.center,
                              child: SpinKitChasingDots(
                                color: kTheme.colorScheme.secondary,
                              ),
                            ),
                          } else ...{
                            ..._articles
                                .map(
                                  (article) => ArticleListTile(
                                    article: article,
                                    onPressed: () => context.navigator
                                        .pushArticleDetailsPage(
                                            article: article),
                                  ),
                                )
                                .toList(),
                            SizedBox(height: kSpacingX64),
                          }
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              /// bottom nav
              BottomNavView(
                items: _navItems,
                onNavSelected: (index) {
                  setState(() {
                    _currentNav = index;
                  });
                },
                selectedIndex: _currentNav,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _fetchNews() async {
    var apiKey = env['news_api_key'];
    var response = await Dio().get(
        'http://newsapi.org/v2/everything?q=google&from=2021-01-15&to=2021-01-15&sortBy=popularity&apiKey=$apiKey');

    if (response.statusCode == 200) {
      var data = response.data;
      var articles = (data['articles'] as List).toList();
      for (var json in articles) {
        _articles.update(Article.fromJson(json));
      }
      logger.i('Articles -> $_articles');
      if (mounted) setState(() {});
    } else {
      logger.e(response.toString());
    }
  }
}
