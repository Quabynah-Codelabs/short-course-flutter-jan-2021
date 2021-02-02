import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    var kTheme = Theme.of(context);

    return Scaffold(
      body: Center(
        child: Text('Register Page'),
      ),
    );
  }
}
