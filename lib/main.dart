import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hawaii/controllers/singup_controller.dart';
import 'package:hawaii/firebase_options.dart';
import 'package:hawaii/routes/user_routes.dart';
import 'package:hawaii/screens/admin/admin_dashboard.dart';
import 'package:hawaii/screens/splash_screen/splash_screen.dart';
import 'package:hawaii/widgets/navigation_bar/admin_appbar.dart';

import 'data/repositories/admin_repo/admin_repo.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // MyBinding().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MaterialColor blackSwatch = MaterialColor(
      0xFF000000, // The primary value
      <int, Color>{
        50: Colors.black, // You can define shades as needed
        100: Colors.black,
        200: Colors.black,
        300: Colors.black,
        400: Colors.black,
        500: Colors.black, // This is the primary color
        600: Colors.black,
        700: Colors.black,
        800: Colors.black,
        900: Colors.black,
      },
    );
    return GetMaterialApp(

      title: 'Hawaii: Ticket Reservation App',
      debugShowCheckedModeBanner: false,
      initialBinding: MyBinding(),
      theme: ThemeData(
        primarySwatch: blackSwatch,
      ),
      initialRoute: AdminBottomBar.routeName,
      routes: routes,
    );
  }
}

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AdminRepo());
    Get.put(SignUpController());
  }
}
