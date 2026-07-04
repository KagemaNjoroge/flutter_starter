import 'package:flutter/material.dart';

class SignupCredentials {
  final String password;
  final String email;

  SignupCredentials(this.email, this.password);
}

class SignUpPage extends StatefulWidget {
  final ValueChanged<SignupCredentials> onSignIn;
  const SignUpPage({required this.onSignIn, super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Sign up"));
  }
}
