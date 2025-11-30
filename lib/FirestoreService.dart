import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference users = FirebaseFirestore.instance.collection(
    'users',
  );
  Future<void> createUsers(String name, int age) {
    return users.add({'name': name, 'age': age});
  }

  Stream<QuerySnapshot> streamUsers() {
    return users.snapshots();
  }

  Future<void> updateUser(String id, String name, int age) {
    return users.doc(id).update({'name': name, 'age': age});
  }

  Future<void> deleteUser(String id) {
    return users.doc(id).delete();
  }
}
