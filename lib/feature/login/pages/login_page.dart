import 'package:flutter/material.dart';
import 'package:freelancer_test_prject/feature/login/widgets/login_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _LoginPage();
  }
}

class _LoginPage extends StatefulWidget {
  const _LoginPage();

  @override
  State<_LoginPage> createState() => __LoginPageState();
}

class __LoginPageState extends State<_LoginPage> {
  @override
  Widget build(BuildContext context) {
    return LoginWidget();
  }
}
