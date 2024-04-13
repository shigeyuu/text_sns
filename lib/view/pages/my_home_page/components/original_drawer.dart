import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:text_sns/controllers/theme_controller.dart';

class OriginalDrawer extends StatelessWidget {
  const OriginalDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = ThemeController.to;
    return Drawer(
        // 'const'を削除しました
        child: ListView(children: [
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
