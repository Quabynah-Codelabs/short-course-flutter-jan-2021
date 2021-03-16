library pages;

import 'package:blog_app_project/app/pages/pages.dart';
import 'package:blog_app_project/domain/entities/entities.dart';
import 'package:flutter/material.dart';

/// wrapper class for exposing page routes
class CustomPageRoutes {
  /// individual route names
  static const INITIAL = '/';
  static const BLOG_DETAILS = '/blog-details';
  static const HOME = '/home';
  static const LOGIN = '/login';
  static const REGISTER = '/register';
  static const PHONE_AUTH = '/phone-auth';
  static const SEARCH = '/search';

  /// 'welcome' : (BuildContext context) => Widget();
  /// contains all routes
  /// This is no longer needed since the generator function below will handle
  /// the routes
  // static final routes = {
  //   '/': (_) => WelcomePage(),
  //   '/blog-details': (_) => BlogDetailsPage(
  //         post: null,
  //       ),
  // '/login': (_) => LoginPage(),
  // '/register': (_) => RegisterPage(),
  // '/home': (_) => HomePage(),
  // '/phone-auth': (_) => PhoneAuthPage(),
  // '/search': (_) => SearchPage(),
  // };

  /// just using the same signature for the method expected
  /// this is a proper way to setup routes in flutter
  /// There are packages out there that can help automate this process
  /// check out -> auto_route & auto_route_generator
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case INITIAL:
        return MaterialPageRoute(builder: (_) => WelcomePage());
      case HOME:
        return MaterialPageRoute(builder: (_) => HomePage());
      case LOGIN:
        return MaterialPageRoute(builder: (_) => LoginPage());
      case REGISTER:
        return MaterialPageRoute(builder: (_) => RegisterPage());
      case PHONE_AUTH:
        return MaterialPageRoute(builder: (_) => PhoneAuthPage());
      case SEARCH:
        return MaterialPageRoute(builder: (_) => SearchPage());
      case BLOG_DETAILS:
        return MaterialPageRoute(
          builder: (_) => settings.arguments is BaseBlogPost
              ? BlogDetailsPage(post: settings.arguments as BaseBlogPost?)
              : throw Exception(
                  "Invalid argument passed. Expects a blog post but found ${settings.arguments.runtimeType}"),
        );
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text(
                      'Page not found',
                      style: Theme.of(_).textTheme.headline5,
                    ),
                  ),
                ));
    }
  }
}
