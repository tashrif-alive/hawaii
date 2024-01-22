import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../../models/admin_model.dart';

class AdminRepo extends GetxController {
  static AdminRepo get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  // Create Admin Document
  Future<void> createAdminDoc(AdminModel adminData) async {
    await _db
        .collection("admins") // Updated collection name to "admins"
        .doc(adminData.id)
        .set(adminData.toJson())
        .then((_) {
      Get.snackbar(
        "Success:",
        "Your Account Has Been Created",
        icon: const Icon(Icons.check_circle, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.blue,
        borderRadius: 10,
        margin: const EdgeInsets.all(15),
        colorText: Colors.white,
        duration: const Duration(seconds: 10),
        isDismissible: true,
        dismissDirection: DismissDirection.horizontal,
        forwardAnimationCurve: Curves.easeOutBack,
      );
    })
        .catchError((error) {
      Get.snackbar(
        "Error:",
        "Something Went Wrong! Try Again",
        icon: const Icon(Icons.error_outline_sharp, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        borderRadius: 10,
        margin: const EdgeInsets.all(15),
        colorText: Colors.white,
        duration: const Duration(seconds: 10),
        isDismissible: true,
        dismissDirection: DismissDirection.horizontal,
        forwardAnimationCurve: Curves.easeOutBack,
      );
      print(error.toString());
    });
  }

  // Check if the user is an admin
  Future<bool> isAdmin(String email) async {
    try {
      print(email);
      final adminSnapshot = await _db.collection('admins').where('Email', isEqualTo: "test@gmail.com").get(); // Updated collection name to "admins"
      // final adminSnapshots = await _db.collection('admins').get(); // Updated collection name to "admins"
      // print(adminSnapshot.docs.map((e) => e.data()));
      print("user found: ${adminSnapshot.docs.isNotEmpty}");
      return adminSnapshot.docs.isNotEmpty;
    } catch (e) {
      print('Error checking admin status: $e');
      return false;
    }
  }

  // Fetch Admin Details
  Future<AdminModel> getAdminDetails(String email) async {
    final snapshot = await _db.collection("admins").where("Email", isEqualTo: email).get(); // Updated collection name to "admins"
    final adminData = snapshot.docs.map((admin) => AdminModel.fromDatabase(admin)).single;
    return adminData;
  }

  // Fetch Admin Name
  Future<AdminModel> getAdminName(String email) async {
    final snapshot = await _db.collection("admins").where("Email", isEqualTo: email).get(); // Updated collection name to "admins"
    final adminData = snapshot.docs.map((admin) => AdminModel.fromDatabase(admin)).single;
    return adminData;
  }

  // Fetch All Admins
  Future<List<AdminModel>> getAllUsers() async {
    final snapshot = await _db.collection("admins").get(); // Updated collection name to "admins"
    final adminData = snapshot.docs.map((admin) => AdminModel.fromDatabase(admin)).toList();
    return adminData;
  }

  // Update Admin Records
  Future<void> updateAdminRecord(AdminModel admin) async {
    await _db.collection("admins").doc(admin.id).update(admin.toJson()); // Updated collection name to "admins"
  }
}
