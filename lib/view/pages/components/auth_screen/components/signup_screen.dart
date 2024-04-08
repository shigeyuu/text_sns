import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  late double? _deviceHeight;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    _deviceHeight = size.height;

    return SingleChildScrollView(
      child: Column(
        children: [
          _titleWidget(),
          _signupForm(),
          _positiveButton(),
        ],
      ),
    );
  }

  //タイトル関数
  Widget _titleWidget() {
    return const Text("新規登録",
        style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold));
  }

  //入力フォーム関数
  Widget _signupForm() {
    return SizedBox(
      height: _deviceHeight! * 0.30,
      child: Form(
          key: _formKey,
          child: Column(children: [
            _emailTextField(),
            _passwordTextField(),
          ])),
    );
  }

  //email入力をする関数
  Widget _emailTextField() {
    return TextFormField(
        decoration: const InputDecoration(hintText: "メールアドレス"),
        validator: (value) {
          if (value!.isEmpty) {
            return "メールアドレスを入力してください";
          }
          return null;
        },
        onSaved: (value) {
          // emailを保存する処理
        });
  }

  //password入力をする関数
  Widget _passwordTextField() {
    return TextFormField(
      obscureText: true,
      decoration: const InputDecoration(hintText: "パスワード"),
      validator: (value) {
        if (value!.isEmpty) {
          return "パスワードを入力してください";
        }
        return null;
      },
    );
  }

  Widget _positiveButton() {
    return ElevatedButton(
      onPressed: () {
        // バリデーションを行う
        if (_formKey.currentState!.validate()) {
          // フォームフィールドの情報を変数に保存する
          _formKey.currentState!.save();
        }
      },
      child: const Text("送信"),
    );
  }
}
