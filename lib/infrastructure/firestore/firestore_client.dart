import 'package:text_sns/typedefs/firestore_typedef.dart';

class FirestoreClient {
  Future<void> createDoc(DocRef ref, SDMap data) async => await ref.set(data);
  Future getDoc(DocRef ref) async => await ref.get();
}