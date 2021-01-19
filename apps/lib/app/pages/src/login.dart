import 'package:apps/app/widgets/widgets.dart';
import 'package:apps/shared/shared.dart';
import 'package:flutter/material.dart';

/// login -> sign in with email & password
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  /// form
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController(),
      _passwordController = TextEditingController();
  bool _isLoading = false;

  /// UI
  ThemeData kTheme;

  @override
  Widget build(BuildContext context) {
    kTheme = Theme.of(context);

    return Scaffold(
      body: ConstrainedBox(
        constraints: BoxConstraints.tightFor(
          height: SizeConfig.screenHeight,
          width: SizeConfig.screenWidth,
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(
            kSpacingX24,
            SizeConfig.screenHeight * 0.15,
            kSpacingX24,
            kSpacingX36,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Welcome back',
                style: kTheme.textTheme.headline4,
              ),
              SizedBox(height: kSpacingX8),
              Text(
                'Login to get started',
                style: kTheme.textTheme.bodyText1,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: kSpacingX36),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    NewsFormField(
                      label: 'Your Email',
                      hint: 'johndoe@gmail.com',
                      inputType: TextInputType.emailAddress,
                      controller: _emailController,
                      validator: (input) =>
                          input.isEmpty ? 'Email is required' : null,
                    ),
                    NewsFormField(
                      label: 'Choose a password',
                      hint: 'johndoe',
                      obscureText: true,
                      controller: _passwordController,
                      onSubmit: (_) => _validateAndSignIn(),
                      validator: (input) =>
                          input.isEmpty ? 'Password is required' : null,
                    ),
                    SizedBox(height: kSpacingX24),

                    /// todo -> perform sign in
                    PrimaryButton(
                      width: SizeConfig.screenWidth,
                      label: 'Let\'s go',
                      isLoading: _isLoading,
                      onPressed: _validateAndSignIn,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// validate form and sign up
  void _validateAndSignIn() {
    if (_formKey.currentState != null && _formKey.currentState.validate()) {
      _formKey.currentState.save(); // save form state
      var email = _emailController.text.trim();
      var password = _passwordController.text.trim();

      /// todo -> login for existing blogger
      context.navigator
        ..pop()
        ..pushHomePage();
    }
  }
}
