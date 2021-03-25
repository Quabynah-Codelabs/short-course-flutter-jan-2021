import 'package:flutter/material.dart';

/// adding extensions to [BuildContext] class
extension ContextX on BuildContext {
  NavigatorState get navigator => Navigator.of(this);

  void showSnackBar(String message) => ScaffoldMessenger.of(this)
    ..removeCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.fixed,
      ),
    );
}
