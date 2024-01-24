import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hawaii/models/user_model.dart';


class UserRepo extends GetxController {
  static UserRepo get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  createUserDoc(UserModel userData) async {
    await _db
        .collection("Users")
        .doc(userData.id)
        .set(userData.toJson())
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
  Future<UserModel> getUserDetails(String email) async {
    final snapshot = await _db.collection("Users").where("Email", isEqualTo: email).get();
    final userData = snapshot.docs.map((user) => UserModel.fromDatabase(user)).single;
    return userData;
  }

  // Fetch User Name
  Future<UserModel> getUserName(String email) async {
    final snapshot = await _db.collection("Users").where("Email", isEqualTo: email).get();
    final userData = snapshot.docs.map((user) => UserModel.fromDatabase(user)).single;
    return userData;
  }

  // Fetch All Users
  Future<List<UserModel>> getAllUsers() async {
    final snapshot = await _db.collection("Users").get();
    final userData = snapshot.docs.map((user) => UserModel.fromDatabase(user)).toList();
    return userData;
  }

  // Update User Records
  Future<void> updateUserRecord(UserModel user) async {
    await _db.collection("Users").doc(user.id).update(user.toJson());
  }
}
