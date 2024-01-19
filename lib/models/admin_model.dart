
import 'package:cloud_firestore/cloud_firestore.dart';

class AdminModel {
  final String? id;
  final String fullName;
  final String phone;
  final String email;
  final String password;

  const AdminModel(
      {this.id,
        required this.fullName,
        required this.phone,
        required this.email,
        required this.password});

  toJson() {
    return {
      "FullName": fullName,
      "Email": email,
      "Phone": phone,
      "Password": password,
    };
  }

  factory AdminModel.fromDatabase(DocumentSnapshot<Map<String, dynamic>> user) {
    final userdata = user.data()!;

    return AdminModel(
      id: user.id,
      fullName: userdata["FullName"],
      phone: userdata["Phone"],
      email: userdata["Email"],
      password: "",
    );
  }
}
