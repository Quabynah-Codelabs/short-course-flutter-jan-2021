import 'package:blog_app_project/app/widgets/widgets.dart';
import 'package:blog_app_project/data/entities/entities.dart' show Blogger;
import 'package:blog_app_project/shared/shared.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fimber/fimber.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  /// controllers for editing text fields
  final _firstNameController = TextEditingController(),
      _lastNameController = TextEditingController(),
      _emailController = TextEditingController(),
      _passwordController = TextEditingController();

  /// form key
  final _formKey = GlobalKey<FormState>();

  /// UI
  bool _isLoading = false;

  /// validate fields and create user account
  Future<void> _validateAndRegister() async {
    Fimber.d(
        'email -> ${_emailController.text.trim()} & password -> ${_passwordController.text.trim()}');

    /// check for valid form
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      /// gets firebase authentication instance
      var auth = FirebaseAuth.instance;

      try {
        setState(() {
          _isLoading = !_isLoading;
        });

        /// authenticate user
        var credential = await auth.createUserWithEmailAndPassword(
            email: _emailController.text.trim(),
            password: _passwordController.text.trim());

        var firebaseUser = credential.user;

        if (firebaseUser == null) {
          setState(() {
            _isLoading = !_isLoading;
          });
          showSnackBar(
            context: context,
            message:
                'Unable to complete registration. Account may already exist',
          );
        } else {
          /// create a new user's data model
          var blogger = Blogger(
            firstName: _firstNameController.text.trim(),
            key: firebaseUser.uid,
            lastName: _lastNameController.text.trim(),
            email: _emailController.text.trim(),
          );

          /// save user data in users collection
          await FirebaseFirestore.instance
              .collection("users")
              .doc(firebaseUser.uid)
              .set(blogger.toJson(), SetOptions(merge: true));

          setState(() {
            _isLoading = !_isLoading;
          });
          showSnackBar(
            context: context,
            message:
                'Welcome, ${_firstNameController.text.trim()}! Enjoy reading!',
          );
        }
      } catch (PlatformException, e) {
        setState(() {
          _isLoading = !_isLoading;
        });
        Fimber.e(e.toString());
        showSnackBar(
          context: context,
          message: 'Could not create your account. Please try again later',
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    var kTheme = Theme.of(context);
    var kTextTheme = kTheme.textTheme;
    var kWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          flex: 1,
          child: Container(
            width: kWidth,
            padding: EdgeInsets.only(left: kSpacingX24),
            color: kTheme.colorScheme.primary,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Join us today',
                  style: kTextTheme.headline4?.copyWith(
                    color: kTheme.colorScheme.onPrimary,
                  ),
                ),
                SizedBox(height: kSpacingX4),
                Text(
                  'Create a free account to get started...',
                  style: kTextTheme.bodyText1?.copyWith(
                    color: kTheme.colorScheme.onPrimary,
                  ),
                )
              ],
            ),
          ),
        ),
        Flexible(
          flex: 2,
          child: Container(
            color: kTheme.colorScheme.background,
            padding: EdgeInsets.symmetric(
              horizontal: kSpacingX24,
              vertical: kSpacingX16,
            ),
            width: kWidth,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                    validator: (text) => text == null || text.isEmpty
                        ? 'First name is required'
                        : null,
                    controller: _firstNameController,
                  ),
                  TextFormField(
                    validator: (text) => text == null || text.isEmpty
                        ? 'Last name is required'
                        : null,
                    controller: _lastNameController,
                  ),
                  TextFormField(
                    validator: (text) => text == null || text.isEmpty
                        ? 'Email is required'
                        : null,
                    controller: _emailController,
                  ),
                  TextFormField(
                    validator: (text) => text == null || text.isEmpty
                        ? 'Password is required'
                        : null,
                    obscureText: true,
                    controller: _passwordController,
                  ),
                  SizedBox(height: kSpacingX16),
                  _isLoading
                      ? CircularProgressIndicator.adaptive()
                      : ButtonPrimary(
                          buttonText: 'Sign up',
                          onTap: _validateAndRegister,
                        ),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
