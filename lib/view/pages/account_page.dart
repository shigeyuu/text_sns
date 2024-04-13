import 'package:flutter/material.dart';
import 'package:text_sns/view/common/basic_page.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});
  static const path = '/account';

  @override
  Widget build(BuildContext context) {
    return const BasicPage(
      appBarTitle: 'アカウントページ',
      child: Center(
        child: Align(alignment: Alignment.center, child: Text('アカウントページ')),
      ),
    );
  }
}
