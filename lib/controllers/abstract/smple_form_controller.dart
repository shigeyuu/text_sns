import 'package:get/get.dart';

abstract class SimpleFormController extends GetxController {
  String text = "";
  void setText(String? value) {
    if (value == null) return;
    text = value;
  }

  void onPositiveButtonPressed();
  String get title;
  String get hintText;
  String get validatorMsg;
  String get positiveButtonText;
  String get successMsg;
  String get failureMsg;
}
