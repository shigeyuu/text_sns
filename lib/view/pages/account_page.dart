import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:text_sns/controllers/auth_controller.dart';
import 'package:text_sns/view/common/basic_page.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});
  static const path = '/account';

  @override
  Widget build(BuildContext context) {
    final controller = AuthController.to;
    return BasicPage(
      appBarTitle: 'アカウントページ',
      child: Center(
        child: ListView(
          children: [
            Obx(() {
              final authUser = controller.rxAuthUser.value;
              final data = authUser == null ? "Nullです" : authUser.email!;
              return ListTile(
                title: Text(data),
                trailing: InkWell(
                  onTap: controller.onEditButtonPressed,
                  child: const Icon(Icons.edit),
                ),
              );
            }),
            ListTile(
              title: const Text('パスワードを変更する'),
              onTap: controller.onUpatePasswordTileTapped,
            ),
            ListTile(
              title: const Text('ログアウト'),
              onTap: controller.onSignOutButtonPressed,
            ),
            ListTile(
              title:
                  const Text('アカウントを削除する', style: TextStyle(color: Colors.red)),
              onTap: controller.onDeleteUserTileTapped,
            ),
          ],
        ),
      ),
    );
  }
}
