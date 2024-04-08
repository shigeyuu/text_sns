import 'package:get/get.dart';

import 'package:firebase_auth/firebase_auth.dart';

class AuthController extends GetxController {
  static AuthController get to => Get.find<AuthController>();
  final rxAuthUser = Rx<User?>(null);
  final rxIsLoginMode = false.obs;
  String email = "";
  String password = "";
  void setEmail(String? value) {
    if (value != null) {
      email = value;
    } else {
      return;
    }
  }

  void setPassword(String? value) {
    if (value != null) {
      password = value;
    } else {
      return;
    }
  }

  void onToggleIsLoginModeButtonPressed() => _toggleIsLoginMode();
  void _toggleIsLoginMode() => rxIsLoginMode.value = !rxIsLoginMode.value;
}
