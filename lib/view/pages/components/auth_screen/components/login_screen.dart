import 'package:flutter/material.dart';
import 'package:text_sns/view/abstract/auth_state.dart';
import 'package:text_sns/controllers/auth_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends AuthState<LoginScreen> {
  @override
  Widget titleWidget() {
    return const Text("ログイン画面",
        style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold));
  }

  @override
  Widget toggleLoginModeButton() {
    const style = TextStyle(fontSize: 25.0);
    return TextButton(
      onPressed: () {
        AuthController.to.onToggleIsLoginModeButtonPressed();
      },
      child: const Text("新規登録画面へ", style: style),
    );
  }
}
