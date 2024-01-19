import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hawaii/models/admin_model.dart';
import 'package:hawaii/models/user_model.dart';
import 'package:hawaii/repositories/admin_repo/admin_repo.dart';
import 'package:hawaii/repositories/auth_repo/auth_repo.dart';
import 'package:hawaii/repositories/user_repo/user_repo.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final userRepo = Get.put(UserRepo());

  final fullName = TextEditingController();
  final email = TextEditingController();
  final phoneNum = TextEditingController();
  final password = TextEditingController();
  final isAdmin = false.obs;

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void setAdminStatus(bool isAdmin) {
    this.isAdmin.value = isAdmin;
  }

  void registerUser(String email, String password) {
    AuthRepo.instance.createUserEmailPass(email, password);
  }

  Future<void> createUser(UserModel userData) async {
    registerUser(userData.email, userData.password);
    userRepo.createUserDoc(userData);
  }

  void signUp() async {
    try {
      final newUser = UserModel(
        fullName: fullName.text.trim(),
        phone: phoneNum.text.trim(),
        email: email.text.trim(),
        password: password.text.trim(),
      );

      final newAdmin = AdminModel(
        fullName: fullName.text.trim(),
        phone: phoneNum.text.trim(),
        email: email.text.trim(),
        password: password.text.trim(),
      );

      final userRepo = Get.put(UserRepo());
      final adminRepo = Get.put(AdminRepo());

      if (isAdmin.value) {
        await adminRepo.createAdminDoc(newAdmin);
      } else {
        await userRepo.createUserDoc(newUser);
      }
    } catch (e) {
      print('Error during sign up: $e');
    }
  }
}
