import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:text_sns/models/public_user/public_user.dart';

import '../flavors.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(F.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            const data =
                PublicUser(followerCount: 0, followingCount: 0, uid: 'second');
            final json = data.toJson();
            await FirebaseFirestore.instance
                .collection('public_users')
                .doc(data.uid)
                .set(json);
            debugPrint("データを追加しました。");
          } catch (e) {
            debugPrint("アクセスが拒否されました。");
          }
        },
      ),
      body: Center(
        child: Text(
          'Hello ${F.title}',
        ),
      ),
    );
  }
}
