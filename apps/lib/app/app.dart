import 'dart:io';

import 'package:apps/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// application instance
class NewsApp extends StatefulWidget {
  @override
  _NewsAppState createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {
  @override
  void initState() {
    super.initState();
    if (mounted) _configureSystemBars();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kAppName,
      theme: themeData(context),
      darkTheme: darkThemeData(context),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      builder: ExtendedNavigator<BaseRouter>(router: BaseRouter()),
    );
  }

  void _configureSystemBars() {
    final isLightTheme = Theme.of(context).brightness == Brightness.light;

    // Set orientation
    if (Platform.isIOS || Platform.isAndroid) {
      SystemChrome.setSystemUIOverlayStyle(
        isLightTheme ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark,
      );
      SystemChrome.setEnabledSystemUIOverlays([
        SystemUiOverlay.bottom,
        SystemUiOverlay.top,
      ]);
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
    }
  }
}
