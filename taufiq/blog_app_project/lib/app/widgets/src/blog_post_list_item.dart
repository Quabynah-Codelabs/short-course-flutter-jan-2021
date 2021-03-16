import 'package:blog_app_project/app/pages/routes.dart';
import 'package:blog_app_project/domain/entities/entities.dart';
import 'package:blog_app_project/shared/shared.dart';
import 'package:flutter/material.dart';

/// This is a scaffold for a list item in a list of [BlogPost]s
class BlogPostListItem extends StatelessWidget {
  /// constructor
  const BlogPostListItem({required this.post});

  /// required property
  final BaseBlogPost? post;

  @override
  Widget build(BuildContext context) {
    var kTheme = Theme.of(context);
    var kHeight = MediaQuery.of(context).size.height;
    var kWidth = MediaQuery.of(context).size.width;

    /// a clickable container
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(
        CustomPageRoutes.BLOG_DETAILS,
        arguments: post,
      ),
      child: Container(
        width: kWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// image container
           if(post?.imageUrl != null) ... {
             Container(
               width: kWidth * 0.4,
               height: kHeight * 0.15,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(kSpacingX16),
                 color: kTheme.colorScheme.onBackground.withOpacity(0.18),
               ),
               // force the corners of the image to fit the corners of
               // the container itself
               clipBehavior: Clip.hardEdge,
               // load post image from network. Image should crop to fit the container
               // so we use BoxFit.cover
               child: Image.network(
                 post!.imageUrl,
                 fit: BoxFit.cover,
                 width: kWidth * 0.4,
                 height: kHeight * 0.15,
               ),
             )
           },

            /// content container
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: kSpacingX12),
                child: Column(
                  // align items to the top of the column
                  mainAxisAlignment: MainAxisAlignment.start,
                  // align items to LHS
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// todo -> use read time package here
                    // we will later use a package to determine how long it takes
                    // to read a blog post
                    Text(
                      '05 Mins Read',
                      // set text theme
                      style: kTheme.textTheme.caption?.copyWith(
                        // fade color of text
                        color: kTheme.colorScheme.onBackground.withOpacity(0.5),
                      ),
                    ),
                    SizedBox(height: kSpacingX4),

                    /// title
                    Text(
                      // access title prop of blog post passed into the constructor
                      // above.
                      post!.title,
                      // set text theme
                      style: kTheme.textTheme.headline6,
                    ),

                    SizedBox(height: kSpacingX6),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        /// reviews
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '${post!.reviews}',
                              style: kTheme.textTheme.caption,
                            ),
                            SizedBox(width: kSpacingX4),

                            /// fixme -> placeholder icon: we will get more
                            /// icons using external packages
                            Icon(
                              Icons.access_time_rounded,
                              size: kTheme.textTheme.caption?.fontSize,
                            ),
                          ],
                        ),

                        /// comments
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '${post!.comments}',
                              style: kTheme.textTheme.caption,
                            ),
                            SizedBox(width: kSpacingX4),

                            /// fixme -> placeholder icon: we will get more
                            /// icons using external packages
                            Icon(
                              Icons.message,
                              size: kTheme.textTheme.caption?.fontSize,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
