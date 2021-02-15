import 'package:flutter/material.dart';
import 'package:my_first_app/shared/constants.dart';

class AppContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social App UI',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        backgroundColor: kBackgroundColor,
        colorScheme: ColorScheme.light(
          primary: kPrimaryColor,
          onPrimary: kOnPrimaryColor,
        ),
      ),
      home: Container(),
    );
  }
}
