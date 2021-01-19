// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/models/models.dart';
import '../pages/pages.dart';

class Routes {
  static const String splashPage = '/';
  static const String topicPickerPage = '/topic-picker-page';
  static const String homePage = '/home-page';
  static const String registerPage = '/register-page';
  static const String loginPage = '/login-page';
  static const String articleDetailsPage = '/article-details-page';
  static const all = <String>{
    splashPage,
    topicPickerPage,
    homePage,
    registerPage,
    loginPage,
    articleDetailsPage,
  };
}

class BaseRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.topicPickerPage, page: TopicPickerPage),
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.registerPage, page: RegisterPage),
    RouteDef(Routes.loginPage, page: LoginPage),
    RouteDef(Routes.articleDetailsPage, page: ArticleDetailsPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => SplashPage(),
        settings: data,
      );
    },
    TopicPickerPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            TopicPickerPage(),
        settings: data,
      );
    },
    HomePage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => HomePage(),
        settings: data,
      );
    },
    RegisterPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => RegisterPage(),
        settings: data,
      );
    },
    LoginPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => LoginPage(),
        settings: data,
      );
    },
    ArticleDetailsPage: (data) {
      final args = data.getArgs<ArticleDetailsPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            ArticleDetailsPage(
          key: args.key,
          article: args.article,
        ),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension BaseRouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushTopicPickerPage() =>
      push<dynamic>(Routes.topicPickerPage);

  Future<dynamic> pushHomePage() => push<dynamic>(Routes.homePage);

  Future<dynamic> pushRegisterPage() => push<dynamic>(Routes.registerPage);

  Future<dynamic> pushLoginPage() => push<dynamic>(Routes.loginPage);

  Future<dynamic> pushArticleDetailsPage({
    Key key,
    @required BaseArticle<dynamic> article,
  }) =>
      push<dynamic>(
        Routes.articleDetailsPage,
        arguments: ArticleDetailsPageArguments(key: key, article: article),
      );
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// ArticleDetailsPage arguments holder class
class ArticleDetailsPageArguments {
  final Key key;
  final BaseArticle<dynamic> article;
  ArticleDetailsPageArguments({this.key, @required this.article});
}
