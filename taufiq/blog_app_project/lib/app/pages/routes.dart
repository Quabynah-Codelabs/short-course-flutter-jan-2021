import 'package:blog_app_project/app/pages/pages.dart';

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
  static final routes = {
    '/': (_) => WelcomePage(),
    '/blog-details': (_) => BlogDetailsPage(),
    '/login': (_) => LoginPage(),
    '/register': (_) => RegisterPage(),
    '/home': (_) => HomePage(),
    '/phone-auth': (_) => PhoneAuthPage(),
    '/search': (_) => SearchPage(),
  };
}
