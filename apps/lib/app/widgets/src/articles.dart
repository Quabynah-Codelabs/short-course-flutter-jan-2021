import 'package:apps/app/widgets/src/placeholders.dart';
import 'package:apps/app/widgets/widgets.dart';
import 'package:apps/domain/models/models.dart';
import 'package:apps/shared/shared.dart';
import 'package:flutter/material.dart';

/// article list tile
class ArticleListTile extends StatefulWidget {
  const ArticleListTile({
    Key key,
    @required this.article,
    @required this.onPressed,
  }) : super(key: key);

  final BaseArticle article;
  final Function onPressed;

  @override
  _ArticleListTileState createState() => _ArticleListTileState();
}

class _ArticleListTileState extends State<ArticleListTile> {
  ThemeData kTheme;
  bool _isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    var article = widget.article;
    kTheme = Theme.of(context);
    return InkWell(
      onTap: widget.onPressed,
      splashColor: kTheme.colorScheme.surface,
      borderRadius: BorderRadius.circular(kSpacingX8),
      child: Container(
        width: SizeConfig.screenWidth,
        margin: EdgeInsets.only(bottom: kSpacingX8),
        padding: EdgeInsets.fromLTRB(
          kSpacingX16,
          kSpacingX12,
          kSpacingX16,
          kSpacingX20,
        ),
        decoration: BoxDecoration(
          color: kTheme.cardColor,
          borderRadius: BorderRadius.circular(kSpacingX8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// top
            Padding(
              padding: const EdgeInsets.only(bottom: kSpacingX12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      /// indicator
                      Container(
                        height: kTheme.textTheme.bodyText2.fontSize,
                        width: kTheme.textTheme.bodyText2.fontSize,
                        color: kTheme.colorScheme.onSurface,
                        margin: EdgeInsets.only(right: kSpacingX8),
                      ),

                      /// category
                      Text(
                        'Paleontology',
                        style: kTheme.textTheme.bodyText2,
                      ),
                    ],
                  ),

                  /// toggle bookmark
                  IconButton(
                    icon: Icon(_isBookmarked ? kBookmarkIcon : kUnBookmarkIcon),
                    color: kTheme.colorScheme.onSurface,
                    padding: EdgeInsets.zero,
                    splashColor: kTransparent,
                    alignment: Alignment.centerRight,
                    onPressed: () {
                      setState(() {
                        _isBookmarked = !_isBookmarked;
                      });
                    },
                  )
                ],
              ),
            ),

            /// title
            Text(
              article.title,
              style: kTheme.textTheme.headline6,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),

            /// image
            if (article.imageUrl != null) ...{
              Padding(
                padding: const EdgeInsets.only(
                    top: kSpacingX16, bottom: kSpacingX24),
                child: ImageView(
                  imageUrl: article.imageUrl,
                  radius: kSpacingX8,
                  tag: article.imageUrl,
                  height: SizeConfig.screenHeight * 0.2,
                  width: SizeConfig.screenWidth,
                ),
              ),
            },

            /// bottom
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: kSpacingX12),
                  child: Text(
                    article.source.name,
                    style: kTheme.textTheme.caption,
                  ),
                ),
                SizedBox(
                  height: kTheme.textTheme.caption.fontSize,
                  child: VerticalDivider(
                    color: kTheme.colorScheme.onSurface,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: kSpacingX12),
                  child: Text(
                    context.parseTimestamp(article.publishedAt),
                    style: kTheme.textTheme.caption,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
