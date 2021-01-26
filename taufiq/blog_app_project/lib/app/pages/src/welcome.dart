import 'package:blog_app_project/shared/shared.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  var _buttonWidth = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: kSpacingX24,
            vertical: kSpacingX20,
          ),
          child: Column(
            children: [
              /// image of the logo form our assets
              Image.asset(kLogoLight),

              /// get started
              Text('Get started'),

              ///
              Text('Publish your Passion in Your Own Way\nIt\'s free'),

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

              /// buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  /// primary button
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: _buttonWidth,
                      padding: EdgeInsets.symmetric(
                        vertical: kSpacingX12,
                        horizontal: kSpacingX16,
                      ),
                      child: Text(
                        'Register',
                        style: TextStyle(
                          color: kWhiteColor,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(kSpacingX16),
                      ),
                    ),
                  ),

                  /// outlined button
                  InkWell(
                    onTap: _navToLogin,
                    child: Container(
                      width: _buttonWidth,
                      padding: EdgeInsets.symmetric(
                        vertical: kSpacingX12,
                        horizontal: kSpacingX16,
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: kBlackColor,
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: kBlackColor),
                        borderRadius: BorderRadius.circular(kSpacingX16),
                      ),
                    ),
                  ),
                ],
              ),

              ///
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Icon(Icons.phone, color: kBlackColor),
                    padding: EdgeInsets.all(kSpacingX8),
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
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// navigate to the login page
  void _navToLogin() {}
}
