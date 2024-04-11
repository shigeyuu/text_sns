import 'package:get/get.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:text_sns/constant/auth_constant.dart';
import 'package:text_sns/repository/auth_repository.dart';
import 'package:text_sns/ui_core/ui_helper.dart';

class AuthController extends GetxController {
  static AuthController get to => Get.find<AuthController>();
  final rxAuthUser = Rx<User?>(FirebaseAuth.instance.currentUser);
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

  void onPositiveButtonPressed() async {
    if (GetUtils.isEmail(email) && password.length >= 8) {
      rxIsLoginMode.value
          ? await _signInWithEmailAndPassword()
          : await _createUserWithEmailAndPassword();
    }
  }

  Future<void> _createUserWithEmailAndPassword() async {
    final repository = AuthRepository();
    final result = await repository.createUserWithEmailAndPassword(
        email.trim(), password.trim());
    result.when(success: (user) {
      rxAuthUser.value = user;
      UIHelper.showFlutterToast(AuthConstant.signupSuccessMsg);
    }, failure: () {
      UIHelper.showFlutterToast(AuthConstant.signupFailureMsg);
    });
  }

  Future<void> _signInWithEmailAndPassword() async {
    final repository = AuthRepository();
    final result = await repository.signInWithEmailAndPassword(
        email.trim(), password.trim());
    result.when(success: (user) {
      rxAuthUser.value = user;
      UIHelper.showFlutterToast(AuthConstant.loginSuccessMsg);
    }, failure: () {
      UIHelper.showFlutterToast(AuthConstant.loginFailureMsg);
    });
  }

  void onSignOutButtonPressed() async {
    await _signOut();
  }

  Future<void> _signOut() async {
    final repository = AuthRepository();
    final result = await repository.signOut();
    result.when(success: (_) {
      rxAuthUser.value = null;
      UIHelper.showFlutterToast(AuthConstant.signoutSuccessMsg);
    }, failure: () {
      UIHelper.showFlutterToast(AuthConstant.signoutFailureMsg);
    });
  }

  void onToggleIsLoginModeButtonPressed() => _toggleIsLoginMode();
  void _toggleIsLoginMode() => rxIsLoginMode.value = !rxIsLoginMode.value;
}
