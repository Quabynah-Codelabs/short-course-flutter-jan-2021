import 'package:blog_app_project/app/pages/routes.dart';
import 'package:blog_app_project/app/widgets/widgets.dart';
import 'package:blog_app_project/shared/shared.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    /// get theme instance
    var kTheme = Theme.of(context);

    /// get the size of the current display
    var size = MediaQuery.of(context).size;

    /// get height & width
    var kWidth = size.width;
    var kHeight = size.height;

    var buttonWidth = 140.0;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: kHeight,
          width: kWidth,
          padding: EdgeInsets.fromLTRB(
            kSpacingX24,
            kSpacingX20,
            kSpacingX24,
            kSpacingX36,
          ),
          child: Stack(
            fit: StackFit.expand,
            children: [
              /// image of the logo form our assets
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  kLogoLight,
                  height: kSpacingX36,
                  width: kSpacingX36,
                ),
              ),

              /// get started
              Positioned.fill(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Get started',
                      style: kTheme.textTheme.bodyText1,
                    ),

                    SizedBox(height: kSpacingX24),

                    ///
                    Text(
                      'Publish your Passion in Your Own Way\nIt\'s free',
                      style: kTheme.textTheme.headline5,
                    ),

                    SizedBox(height: kSpacingX24),

                    ///
                    Row(
                      children: [
                        /// active indicator
                        Container(
                          width: kSpacingX16,
                          height: kSpacingX4,
                          decoration: BoxDecoration(
                            color: kBlackColor,
                          ),
                          margin: EdgeInsets.only(right: kSpacingX12),
                        ),

                        /// inactive indicator
                        Container(
                          width: kSpacingX16,
                          height: kSpacingX4,
                          decoration: BoxDecoration(
                            color: kGrayColor,
                          ),
                          margin: EdgeInsets.only(right: kSpacingX12),
                        ),

                        /// inactive indicator
                        Container(
                          width: kSpacingX16,
                          height: kSpacingX4,
                          decoration: BoxDecoration(
                            color: kGrayColor,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: kSpacingX24),

                    /// buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        /// primary button
                        ButtonPrimary(
                          buttonText: 'Register',
                          onTap: () => Navigator.of(context)
                              .pushNamed(CustomPageRoutes.REGISTER),
                        ),

                        SizedBox(width: kSpacingX12),

                        /// outlined button
                        ButtonOutlined(
                          buttonText: 'Login',
                          onTap: () => Navigator.of(context)
                              .pushNamed(CustomPageRoutes.LOGIN),
                        ),
                      ],
                    ),

                    SizedBox(height: kSpacingX24),

                    /// [GestureDetector] acts like [InkWell] but does not apply a splash/ ripple color
                    GestureDetector(
                      /// todo -> change `HOME` to `PHONE_AUTH`
                      onTap: () => Navigator.of(context)
                          .pushNamed(CustomPageRoutes.HOME),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Icon(
                              Icons.phone,
                              color: kBlackColor,
                              size: kSpacingX20,
                            ),
                            padding: EdgeInsets.all(kSpacingX4),
                            margin: EdgeInsets.only(right: kSpacingX16),
                            decoration: BoxDecoration(
                              border: Border.all(color: kBlackColor),
                              shape: BoxShape.circle,
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(text: 'Continue with '),
                                TextSpan(
                                  text: 'Phone No.',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            style: kTheme.textTheme.bodyText2.copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
