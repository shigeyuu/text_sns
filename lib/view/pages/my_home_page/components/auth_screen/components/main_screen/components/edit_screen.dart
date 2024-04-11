import 'package:flutter/material.dart';
import 'package:text_sns/view/common/rounded_button.dart';
import 'package:text_sns/view/common/text_field_container.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});
  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      _titleWidget(),
      _formWidget(),
      _positiveButton(),
    ]);
  }

  Widget _titleWidget() {
    return const Text("ユーザー情報編集",
        style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold));
  }

  Widget _formWidget() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _nameTextField(),
        ],
      ),
    );
  }

  // nameを入力する関数
  Widget _nameTextField() {
    return TextFieldContainer(
        child: TextFormField(
      decoration: const InputDecoration(hintText: "ニックネーム"),
    ));
  }

  // 送信するボタン
  Widget _positiveButton() {
    return const RoundedButton(textValue: "更新する");
  }
}
