import 'package:blog_app_project/shared/shared.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    /// get instance of the current theme
    var kTheme = Theme.of(context);

    /// get the size of the current display
    var size = MediaQuery.of(context).size;

    /// get height & width
    var kWidth = size.width;
    var kHeight = size.height;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kSpacingX20,
            vertical: kSpacingX8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// top part
              Container(
                margin: const EdgeInsets.only(bottom: kSpacingX48),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _buildMenuIcon(kTheme),
                    _buildUserAvatar(kTheme),
                  ],
                ),
              ),

              /// title
              Text('Blogs', style: kTheme.textTheme.headline4),

              /// search bar
              Container(),

              /// todo -> build middle part
              /// todo -> build bottom navigation part
            ],
          ),
        ),
      ),
    );
  }

  /// builds custom menu icon
  Widget _buildMenuIcon(ThemeData kTheme) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: kSpacingX36,
            height: kSpacingX2,
            decoration: BoxDecoration(
              color: kTheme.colorScheme.onBackground,
              borderRadius: BorderRadius.circular(kSpacingX2),
            ),
            margin: EdgeInsets.only(bottom: kSpacingX6),
          ),
          Container(
            width: kSpacingX24,
            height: kSpacingX2,
            decoration: BoxDecoration(
              color: kTheme.colorScheme.onBackground,
              borderRadius: BorderRadius.circular(kSpacingX2),
            ),
          ),
        ],
      );

  /// builds sample user avatar
  Widget _buildUserAvatar(ThemeData kTheme) => Container(
        height: kSpacingX42,
        width: kSpacingX42,
        decoration: BoxDecoration(shape: BoxShape.circle),
        clipBehavior: Clip.hardEdge,
        child: Image.asset(
          'assets/user_avatar.jpg',
          height: kSpacingX42,
          width: kSpacingX42,
          fit: BoxFit.cover,
        ),
      );
}
