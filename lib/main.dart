import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hawaii/common/signUp/signup.dart';
import 'package:hawaii/firebase_options.dart';
import 'package:hawaii/repositories/admin_repo/admin_repo.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  MyBinding().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Hawaii: Ticket Reservation App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: SignUpScreen(),
    );
  }
}

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AdminRepo());
  }
}
