import 'package:apps/app/widgets/widgets.dart';
import 'package:apps/shared/shared.dart';
import 'package:flutter/material.dart';

/// register -> sign up with username, email & password
class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  /// form
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController(),
      _emailController = TextEditingController(),
      _passwordController = TextEditingController(),
      _passwordConfirmationController = TextEditingController();
  final _passwordFocusNode = FocusNode();
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
                'Sign up',
                style: kTheme.textTheme.headline4,
              ),
              SizedBox(height: kSpacingX8),
              Text(
                kRegisterHelperText,
                style: kTheme.textTheme.bodyText1,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: kSpacingX36),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    NewsFormField(
                      label: 'Your Full Name',
                      hint: 'John Doe',
                      controller: _nameController,
                      inputType: TextInputType.name,
                      textCapitalization: TextCapitalization.words,
                      validator: (input) =>
                          input.isEmpty ? 'Name is required' : null,
                    ),
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
                      onSubmit: (_) => _passwordFocusNode.requestFocus(),
                      validator: (input) =>
                          input.isEmpty ? 'Password is required' : null,
                    ),
                    NewsFormField(
                      label: 'Confirm the password',
                      hint: 'johndoe',
                      focusNode: _passwordFocusNode,
                      obscureText: true,
                      controller: _passwordConfirmationController,
                      inputAction: TextInputAction.go,
                      onSubmit: (_) => _validateAndSignUp(),
                      validator: (password) =>
                          _passwordController.text.isNotEmpty &&
                                  _passwordController.text == password
                              ? null
                              : '\u2715\tThe passwords must be identical',
                    ),
                    SizedBox(height: kSpacingX24),

                    /// todo -> perform sign up
                    PrimaryButton(
                      width: SizeConfig.screenWidth,
                      label: 'Create account',
                      isLoading: _isLoading,
                      onPressed: _validateAndSignUp,
                    ),
                    SizedBox(height: kSpacingX16),
                    ButtonClear(
                      label: 'Already have an account? Login instead',
                      onPressed: () => context.navigator
                        ..pop()
                        ..pushLoginPage(),
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
  void _validateAndSignUp() {
    if (_formKey.currentState != null && _formKey.currentState.validate()) {
      _formKey.currentState.save(); // save form state
      var email = _emailController.text.trim();
      var username = _nameController.text.trim();
      var password = _passwordController.text.trim();

      /// todo -> create new blogger account
      context.navigator
        ..pop()
        ..pushHomePage();
    }
  }
}
