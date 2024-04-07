import 'package:get/get.dart';

import 'package:firebase_auth/firebase_auth.dart';

class AuthController extends GetxController {
  final rxAuthUser = Rx<User?>(null);
}
