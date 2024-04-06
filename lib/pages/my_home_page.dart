import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:text_sns/models/public_user.dart';
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
            final firstUserDocument = await FirebaseFirestore.instance
                .collection('public_users')
                .doc('first')
                .get();
            final firsUserJson = firstUserDocument.data();
            if (firsUserJson == null) {
              print("データが見つかりませんでした。");
            } else {
              final publicUser = PublicUser.fromJson(firsUserJson);
              print("ユーザーのID: ${publicUser.uid}");
            }
          } catch (e) {
            print("アクセスが拒否されました。");
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
