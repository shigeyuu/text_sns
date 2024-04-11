import 'package:get/get.dart';
import 'package:text_sns/controllers/auth_controller.dart';
import 'package:text_sns/controllers/main_controller.dart';
import 'package:text_sns/core/firestore/doc_ref_core.dart';
import 'package:text_sns/repository/firestore_repository.dart';
import 'package:text_sns/ui_core/ui_helper.dart';

class EditController extends GetxController {
  static EditController get to => Get.find<EditController>();
  String name = "";
  void setName(String? value) {
    if (value == null) return;
    name = value;
  }

  void onPositiveButtonPressed() async {
    if (name.isEmpty) return;
    await _updatePublicUser();
  }

  Future<void> _updatePublicUser() async {
    final repository = FirestoreRepository();
    final uid = AuthController.to.rxAuthUser.value!.uid;
    final data = {
      "name": name,
    };
    final ref = DocRefCore.publicUserDocRef(uid);
    final result = await repository.updateDoc(ref, data);
    result.when(success: (_) {
      final oldPublicUser = MainController.to.rxPublicUser.value;
      if (oldPublicUser == null) return;
      final newPublicUser = oldPublicUser.copyWith(name: name);
      MainController.to.rxPublicUser.value = newPublicUser;
      UIHelper.showFlutterToast("ユーザーの更新が成功しました");
    }, failure: () {
      UIHelper.showFlutterToast("ユーザーの更新が失敗しました");
    });
  }
}