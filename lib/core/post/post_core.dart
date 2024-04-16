import 'package:get/get.dart';
import 'package:text_sns/repository/firestore_repository.dart';
import 'package:text_sns/typedefs/firestore_typedef.dart';
import 'package:text_sns/ui_core/dialog_core.dart';
import 'package:text_sns/ui_core/ui_helper.dart';

class PostCore {
  static void onDeleteIconTapped(QDoc postDoc) {
    DialogCore.cupertinoAlertDialog("投稿を削除しますがよろしいですか？", "投稿の削除", () async {
      Get.back();
      await _deletePost(postDoc);
    });
  }

  static Future<void> _deletePost(QDoc postDoc) async {
    final repository = FirestoreRepository();
    final ref = postDoc.reference;
    final result = await repository.deleteDoc(ref);
    result.when(success: (_) {
      UIHelper.showFlutterToast("削除が成功しました");
    }, failure: () {
      UIHelper.showFlutterToast("削除が失敗しました");
    });
  }
}
