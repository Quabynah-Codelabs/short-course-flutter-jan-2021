import 'package:blog_app_project/app/pages/routes.dart';
import 'package:blog_app_project/app/widgets/widgets.dart';
import 'package:blog_app_project/data/entities/entities.dart';
import 'package:blog_app_project/shared/shared.dart';
import 'package:flutter/material.dart';

/// Home page -> contains all blog posts
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double kWidth, kHeight;

  @override
  Widget build(BuildContext context) {
    /// get instance of the current theme
    var kTheme = Theme.of(context);

    /// get the size of the current display
    var size = MediaQuery.of(context).size;

    /// get height & width
    kWidth = size.width;
    kHeight = size.height;

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
              Padding(
                padding: EdgeInsets.only(top: kSpacingX24),
                child: InkWell(
                  splashColor: kTheme.splashColor,
                  borderRadius: BorderRadius.circular(kSpacingX12),
                  onTap: () =>
                      Navigator.of(context).pushNamed(CustomPageRoutes.SEARCH),
                  child: Container(
                    width: kWidth,
                    height: kToolbarHeight,
                    padding: EdgeInsets.symmetric(horizontal: kSpacingX8),
                    decoration: BoxDecoration(
                      color: kTheme.cardColor,
                      borderRadius: BorderRadius.circular(kSpacingX12),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search,
                          size: kTheme.textTheme.headline5.fontSize,
                        ),
                        SizedBox(width: kSpacingX8),
                        Expanded(
                          child: Text(
                            'Search Blogs',
                            style: kTheme.textTheme.headline6.copyWith(
                              color: kTheme.colorScheme.onBackground
                                  .withOpacity(kEmphasisMedium),
                            ),
                          ),
                        ),
                        SizedBox(width: kSpacingX8),
                        GestureDetector(
                          onTap: () {
                            // todo -> apply filters to search results
                          },
                          child: Container(
                            height: kToolbarHeight,
                            width: kToolbarHeight - kSpacingX16,
                            margin: EdgeInsets.symmetric(vertical: kSpacingX8),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: kTheme.colorScheme.background,
                              borderRadius: BorderRadius.circular(kSpacingX8),
                            ),
                            child: Icon(
                              Icons.settings,
                              color: kTheme.colorScheme.onBackground
                                  .withOpacity(kEmphasisHigh),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              /// blog posts list
              _buildBlogPosts()

              /// todo -> build bottom navigation part
            ],
          ),
        ),
      ),
    );
  }

  /// builds custom menu icon
  Widget _buildMenuIcon(ThemeData kTheme) => GestureDetector(
        onTap: () {
          // todo -> add action for menu icon
        },
        child: Column(
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
        ),
      );

  /// builds sample user avatar
  Widget _buildUserAvatar(ThemeData kTheme) => GestureDetector(
        onTap: () {
          // todo -> navigate to user profile page
        },
        child: Container(
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
        ),
      );

  /// This section will contain a list of sample blog posts
  /// This will cover the remaining space on the device's display so we
  /// use the [Expanded] widget -> allows the child widget to cover up the remaining
  /// space in a [Column] or a [Row]
  Widget _buildBlogPosts() => Expanded(
        child: Container(
          margin: EdgeInsets.only(top: kSpacingX16),

          /// we use a list view to build rows of blog posts to show
          /// we use one of the named constructors (i.e. ListView#separated)
          /// to create this list. By default, the list scrolls vertically.
          /// This can be altered using the scrollDirection property which
          /// accepts a enumeration class of type [Axis]
          child: ListView.separated(
            /// scrolling direction of the list
            scrollDirection: Axis.vertical,

            /// returns a blog list item at the current index
            itemBuilder: (BuildContext context, int index) {
              return BlogPostListItem(post: sampleBlogs[index]);
            },

            /// creates a separation between the items in the list
            separatorBuilder: (_, __) => SizedBox(height: kSpacingX12),

            /// size of the list to display
            itemCount: sampleBlogs.length, // this is = 4
          ),
        ),
      );
}

/// Now let's build the scaffold for each list item
/// We will use an external widget
/// But how will we model a blog post list item in the first place?
/// We need to know certain basic properties about it. Taking a look at the mockup image,
/// we can gather the following properties:
/// 1. title
/// 2. description
/// 3. author/publisher
/// 4. timestamp (when it was created or last edited)
/// 5. # of reviews/applause
/// 6. # of comments/remarks
/// 7. photo url (reference to image for each post)
/// 8. category (latest/ featured/ premium)
///
/// With these properties in mind, let's create a data model
/// using the clean architecture approach, which we would cover when we meet
/// again in person, we need to layers for our data model to enable
/// us write testable codes. (domain layer & data layer)
///
/// The domain layer contains abstract classes upon which the data layer creates
/// concrete class
///
/// an example is:
///
/// -------------DOMAIN LAYER------------
/// abstract class User {
///   String id;
/// }
///
/// ------------DATA LAYER----------------
/// class Publisher extends User {
///   @override
///   String id;
/// }
///
/// The above example shows that a Publisher is a type of User by
/// inheritance. But to keep things simple for now, I will create it the normal way.
///
