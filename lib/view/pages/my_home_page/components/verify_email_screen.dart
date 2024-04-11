import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:text_sns/constant/verify_email.dart';
import 'package:text_sns/controllers/verify_email_controller.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerifyEmailController());
    const style = TextStyle(fontSize: 60.0);
    return const Center(
        child: Text(VerifyEmailConstant.verifyEmailTitle, style: style));
  }
}
