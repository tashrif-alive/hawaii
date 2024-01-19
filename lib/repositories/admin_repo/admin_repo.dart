import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hawaii/models/admin_model.dart';



class AdminRepo extends GetxController {
  static AdminRepo get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  createAdminDoc(AdminModel adminData) async {
    await _db
        .collection("admins")
        .doc(adminData.id)
        .set(adminData.toJson())
        .whenComplete(
          () => Get.snackbar(
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
      ),
    )
        .catchError((error, stackTrace) {
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

  // Fetch User Details
  Future<AdminModel> getAdminDetails(String email) async {
    final snapshot = await _db.collection("Admins").where("Email", isEqualTo: email).get();
    final adminData = snapshot.docs.map((admin) => AdminModel.fromDatabase(admin)).single;
    return adminData;
  }

  // Fetch User Name
  Future<AdminModel> getAdminName(String email) async {
    final snapshot = await _db.collection("Admins").where("Email", isEqualTo: email).get();
    final adminData = snapshot.docs.map((amin) => AdminModel.fromDatabase(admin)).single;
    return adminData;
  }

  // Fetch All Users
  Future<List<AdminModel>> getAllUsers() async {
    final snapshot = await _db.collection("Admins").get();
    final adminData = snapshot.docs.map((admin) => AdminModel.fromDatabase(admin)).toList();
    return adminData;
  }

  // Update User Records
  Future<void> updateAdminRecord(AdminModel admin) async {
    await _db.collection("admins").doc(admin.id).update(admin.toJson());
  }
}
