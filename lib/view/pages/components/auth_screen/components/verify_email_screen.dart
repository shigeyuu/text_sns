import 'package:flutter/material.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text("メールアドレスの確認をしてください",
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)));
  }
}
