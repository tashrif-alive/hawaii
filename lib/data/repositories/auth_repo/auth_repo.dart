import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hawaii/screens/splash_screen/splash_screen.dart';
import '../../../widgets/navigation_bar/navigation_menu.dart';
import '../exceptions/login_email_pass_exceptions.dart';
import '../exceptions/signup_email_pass_failure.dart';


class AuthRepo extends GetxController {

  // Variable
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null ? Get.offAll(() => const SplashScreen()) : Get.offAll(() => NavigationMenu());
  }

  Future<void> createUserEmailPass(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      firebaseUser.value != null ? Get.offAll(() => const NavigationMenu()) : Get.offAll(() => SplashScreen());
    } on FirebaseAuthException catch (e) {
      final ex = createUserEmailPassExceptions.code(e.code);
      Get.snackbar(
        "Firebase Auth Exception:",
        "${ex.errorMessage}",
        icon: Icon(Icons.person, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.blue,
        borderRadius: 10,
        margin: EdgeInsets.all(15),
        colorText: Colors.white,
        duration: Duration(seconds: 10),
        isDismissible: true,
        dismissDirection: DismissDirection.horizontal,
        forwardAnimationCurve: Curves.easeOutBack,
      );
      throw ex;
    } catch (_) {
      const ex = createUserEmailPassExceptions();
      Get.snackbar(
        "Exception:",
        "${ex.errorMessage}",
        icon: Icon(Icons.person, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.blue,
        borderRadius: 10,
        margin: EdgeInsets.all(15),
        colorText: Colors.white,
        duration: Duration(seconds: 10),
        isDismissible: true,
        dismissDirection: DismissDirection.horizontal,
        forwardAnimationCurve: Curves.easeOutBack,
      );
      throw ex;
    }
  }

  Future<void> loginEmailPass(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      firebaseUser.value != null ? Get.offAll(() => const NavigationMenu()) : Get.offAll(() => SplashScreen());
    } on FirebaseAuthException catch (e) {
      final ex = loginUserEmailPassExceptions.code(e.code);
      Get.snackbar(
        "Firebase Auth Exception:",
        "${ex.errorMessage}",
        icon: Icon(Icons.person, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.blue,
        borderRadius: 10,
        margin: EdgeInsets.all(15),
        colorText: Colors.white,
        duration: Duration(seconds: 10),
        isDismissible: true,
        dismissDirection: DismissDirection.horizontal,
        forwardAnimationCurve: Curves.easeOutBack,
      );
      throw ex;
    } catch (_) {
      const ex = loginUserEmailPassExceptions();
      Get.snackbar(
        "Exception:",
        "${ex.errorMessage}",
        icon: Icon(Icons.person, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.blue,
        borderRadius: 10,
        margin: EdgeInsets.all(15),
        colorText: Colors.white,
        duration: Duration(seconds: 10),
        isDismissible: true,
        dismissDirection: DismissDirection.horizontal,
        forwardAnimationCurve: Curves.easeOutBack,
      );
      throw ex;
    }
  }

  Future<void> logOut() async => await _auth.signOut();
}
