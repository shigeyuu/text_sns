import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:text_sns/constant/edit_constant.dart';
import 'package:text_sns/controllers/edit_controller.dart';
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
    Get.put(EditController());
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      _titleWidget(),
      _formWidget(),
      _positiveButton(),
    ]);
  }

  Widget _titleWidget() {
    return const Text(EditConstant.title,
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
      decoration: const InputDecoration(hintText: EditConstant.hintText),
      onSaved: (value) {
        EditController.to.setName(value);
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return EditConstant.validatorMsg;
        }
        return null;
      },
    ));
  }

  // 送信するボタン
  Widget _positiveButton() {
    return RoundedButton(
        color: Colors.green,
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            _formKey.currentState!.save();
            EditController.to.onPositiveButtonPressed();
          }
        },
        textValue: EditConstant.positiveButtonText);
  }
}
