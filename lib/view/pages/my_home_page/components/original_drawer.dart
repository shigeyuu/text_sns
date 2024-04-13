import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:text_sns/controllers/theme_controller.dart';
import 'package:text_sns/view/pages/account_page.dart';

class OriginalDrawer extends StatelessWidget {
  const OriginalDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = ThemeController.to;
    return Drawer(
        child: ListView(children: [
      const SizedBox(
        height: 75,
        child: DrawerHeader(
          child: Text('メニュー'),
        ),
      ),
      ListTile(
        title: const Text("アカウントページへ"),
        onTap: () => Get.toNamed(AccountPage.path),
      ),
      Obx(() => ListTile(
            title: const Text('テーマ切り替え'),
            trailing: CupertinoSwitch(
              value: ThemeController.to.rxIsDarkTheme.value,
              onChanged: controller.onSwitchChanged,
            ),
          ))
    ]));
  }
}
