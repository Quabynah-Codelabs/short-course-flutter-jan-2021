import 'package:blog_app_project/app/pages/pages.dart';
import 'package:blog_app_project/app/pages/routes.dart';
import 'package:blog_app_project/shared/shared.dart';
import 'package:flutter/material.dart';

/// entry point of the application
class BlogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: kAppName,
      theme: ThemeData(
        textTheme: kDefaultTextTheme,
        cardColor: kCardColor,
        colorScheme: ColorScheme.light(
          primary: kPrimaryColor,
          background: kBackgroundColor,
          secondary: kPrimaryColor,
          onPrimary: kWhiteColor,
          onSecondary: kWhiteColor,
          onBackground: kBlackColor,
        ),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.dark(),
      ),
      initialRoute: CustomPageRoutes.INITIAL,
      routes: CustomPageRoutes.routes,
    );
  }
}
