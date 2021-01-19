import 'package:apps/app/widgets/widgets.dart';
import 'package:apps/domain/models/models.dart';
import 'package:apps/shared/shared.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

/// article details page
class ArticleDetailsPage extends StatefulWidget {
  const ArticleDetailsPage({Key key, @required this.article}) : super(key: key);

  final BaseArticle article;

  @override
  _ArticleDetailsPageState createState() => _ArticleDetailsPageState();
}

class _ArticleDetailsPageState extends State<ArticleDetailsPage> {
  Color _foreground, _titleColor, _bodyColor;
  ThemeData kTheme;
  bool _isBookmarked = false;

  Future<void> _updateGenerator() async {
    var imageSize = Size(
      SizeConfig.screenWidth,
      SizeConfig.screenHeight * 0.25,
    );
    var generator = await PaletteGenerator.fromImageProvider(
      CachedNetworkImageProvider(widget.article.imageUrl),
      size: imageSize,
      region: Offset.zero & imageSize,
      maximumColorCount: 2,
    );
    if (generator.vibrantColor != null) {
      _foreground = generator.vibrantColor.color;
      _titleColor = generator.vibrantColor.titleTextColor;
      _bodyColor = generator.vibrantColor.bodyTextColor;
    }

    if (mounted) setState(() {});
  }

  @override
  void initState() {
    super.initState();
    if (mounted) {
      _updateGenerator();
    }
  }

  @override
  Widget build(BuildContext context) {
    kTheme = Theme.of(context);
    _foreground ??= kTheme.colorScheme.surface;
    var article = widget.article;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          /// app bar
          SliverAppBar(
            leading: IconButton(
              icon: Icon(kBackIcon),
              onPressed: () => context.navigator.pop(),
            ),
            floating: true,
            title: Text(
              'Feed',
              style: kTheme.textTheme.headline6,
            ),
            centerTitle: false,
            actions: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(kCommentIcon),
                  Padding(
                    padding:
                        EdgeInsets.only(left: kSpacingX4, right: kSpacingX8),
                    child: Text(
                      '4',
                      style: kTheme.textTheme.bodyText1,
                    ),
                  ),
                ],
              ),
              IconButton(
                splashColor: kTransparent,
                icon: Icon(_isBookmarked ? kBookmarkIcon : kUnBookmarkIcon),
                onPressed: () {
                  _isBookmarked = !_isBookmarked;
                  setState(() {});
                },
              ),
            ],
          ),

          /// content
          SliverList(
            delegate: SliverChildListDelegate.fixed(
              [
                Padding(
                  padding: EdgeInsets.only(
                    bottom: kSpacingX16,
                    left: kSpacingX16,
                    top: kSpacingX8,
                    right: kSpacingX8,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: kSpacingX8),
                        child: Text(
                          article.source.name,
                          style: kTheme.textTheme.bodyText2,
                        ),
                      ),
                      SizedBox(
                        height: kTheme.textTheme.bodyText2.fontSize,
                        child: VerticalDivider(
                          color: kTheme.colorScheme.onSurface,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: kSpacingX8),
                        child: Text(
                          context.parseTimestamp(article.publishedAt),
                          style: kTheme.textTheme.bodyText2,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: kSpacingX16, right: kSpacingX8),
                  child: Text(
                    article.title,
                    style: kTheme.textTheme.headline5.copyWith(
                      color: kTheme.colorScheme.onBackground,
                    ),
                  ),
                ),

                /// image
                Container(
                  margin: EdgeInsets.fromLTRB(
                    kSpacingX16,
                    kSpacingX24,
                    kSpacingX16,
                    kSpacingX36,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kSpacingX8),
                  ),
                  clipBehavior: Clip.hardEdge,
                  constraints: BoxConstraints.tightFor(
                    width: SizeConfig.screenWidth,
                    height: SizeConfig.screenHeight * 0.35,
                  ),
                  child: ImageView(
                    imageUrl: article.imageUrl,
                    width: SizeConfig.screenWidth,
                    height: SizeConfig.screenHeight * 0.35,
                    fit: BoxFit.cover,
                    showErrorIcon: true,
                    tag: article.imageUrl,
                  ),
                ),

                /// description
                Padding(
                  padding: const EdgeInsets.only(
                    left: kSpacingX16,
                    right: kSpacingX16,
                    bottom: kSpacingX24,
                  ),
                  child: Text(
                    article.desc,
                    style: kTheme.textTheme.bodyText2,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
