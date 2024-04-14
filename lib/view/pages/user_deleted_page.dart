import 'package:flutter/widgets.dart';
import 'package:text_sns/view/common/basic_page.dart';

class UserDeletedPage extends StatelessWidget {
  const UserDeletedPage({super.key});
  static const path = '/userDeleted';

  @override
  Widget build(BuildContext context) {
    return const BasicPage(
        child: Align(
            alignment: Alignment.center,
            child: Text(
              'ユーザーが削除されました',
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            )));
  }
}
