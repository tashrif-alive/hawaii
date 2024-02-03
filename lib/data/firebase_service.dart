// firebase_service.dart
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  final CollectionReference usersCollection = FirebaseFirestore.instance.collection('Users');

  Future<List<Map<String, dynamic>>> fetchData() async {
    QuerySnapshot querySnapshot = await usersCollection.get();

    return querySnapshot.docs.map((DocumentSnapshot doc) {
      return doc.data() as Map<String, dynamic>;
    }).toList();
  }
}
