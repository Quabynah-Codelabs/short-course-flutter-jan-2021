import 'package:blog_app_project/data/entities/entities.dart';
import 'package:blog_app_project/shared/shared.dart';
import 'package:flutter/material.dart';

/// Details page for each [BlogPost]
class BlogDetailsPage extends StatefulWidget {
  const BlogDetailsPage({@required this.post});

  final BlogPost? post;

  @override
  _BlogDetailsPageState createState() => _BlogDetailsPageState();
}

class _BlogDetailsPageState extends State<BlogDetailsPage> {
  /// toggles bookmark state of blog post
  var _isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    var kTheme = Theme.of(context);
    var kHeight = MediaQuery.of(context).size.height;
    var kWidth = MediaQuery.of(context).size.width;

    /// since this is a stateful widget, we need to access the constructor params
    /// using the [widget] property
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsets.only(
            left: kSpacingX20,
            right: kSpacingX20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// action bar
              Container(
                height: kToolbarHeight,
                width: kWidth,
                alignment: Alignment.centerLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back_outlined),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),

              /// image container
              SizedBox(
                height: kHeight * 0.3,
                width: kWidth,
                child: Stack(
                  fit: StackFit.expand,
                  clipBehavior: Clip.none,
                  children: [
                    /// image
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kSpacingX16),
                          color:
                              kTheme.colorScheme.onBackground.withOpacity(0.18),
                        ),
                      ),
                    ),

                    /// floating bookmark icon
                    Positioned(
                      bottom: -(kToolbarHeight / 2),
                      right: kToolbarHeight,
                      child: GestureDetector(
                        onTap: () {
                          // calling setState to update widget
                          setState(() {
                            _isBookmarked = !_isBookmarked;
                          });
                        },
                        child: Material(
                          elevation: kSpacingX4,
                          borderRadius: BorderRadius.circular(kToolbarHeight),
                          clipBehavior: Clip.hardEdge,
                          child: Container(
                            width: kToolbarHeight,
                            height: kToolbarHeight,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kTheme.colorScheme.background,
                            ),
                            // aligns its child in the center
                            alignment: Alignment.center,
                            child: Icon(
                              _isBookmarked
                                  ? Icons.bookmark_outlined
                                  : Icons.bookmark_border_outlined,
                              size: kSpacingX28, // from 24 -> to 28
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              /// author
              Container(
                margin: EdgeInsets.only(
                  top: kSpacingX16,
                  left: kSpacingX8,
                ),
                alignment: Alignment.centerLeft,
                child: Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(text: 'By'),
                      TextSpan(text: '\t'),
                      TextSpan(
                        text: widget.post?.publisher ?? 'No publisher found',
                        // inherit current text style & apply font weight
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  style: kTheme.textTheme.bodyText1,
                ),
              ),

              /// title
              Padding(
                padding: EdgeInsets.symmetric(vertical: kSpacingX12),
                child: Text(
                  widget.post?.title ?? 'No title',
                  style: kTheme.textTheme.headline5,
                ),
              ),

              /// description
              Expanded(
                child: Text(
                  widget.post?.description ?? 'No description',
                  style: kTheme.textTheme.bodyText1,
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
