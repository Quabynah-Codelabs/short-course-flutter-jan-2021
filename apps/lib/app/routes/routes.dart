import 'package:apps/app/pages/pages.dart';
import 'package:auto_route/auto_route_annotations.dart'
    show AutoRoute, CustomAutoRouter, CustomRoute;

/// Run this to generate new routes upon edit:
/// flutter packages pub run build_runner build --delete-conflicting-outputs --verbose
/// flutter packages pub run build_runner watch --delete-conflicting-outputs --verbose
@CustomAutoRouter(generateNavigationHelperExtension: true, routes: <AutoRoute>[
  CustomRoute(page: SplashPage, initial: true),
  CustomRoute(page: TopicPickerPage),
  CustomRoute(page: HomePage),
  CustomRoute(page: RegisterPage),
  CustomRoute(page: LoginPage),
  CustomRoute(page: ArticleDetailsPage),
])
class $BaseRouter {}
