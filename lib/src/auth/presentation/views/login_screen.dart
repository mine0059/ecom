import 'package:ecom/core/common/widgets/loaders/app_bar_bottom.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const path = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign in'),
        bottom: const AppBarBottom(),
      ),
      body: const Placeholder(),
    );
  }
}
