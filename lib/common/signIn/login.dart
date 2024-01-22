import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hawaii/widgets/navigation_bar/bottom_bar.dart';
import '../../widgets/form/form_header _widget.dart';
import 'login_form_widget.dart';
import 'login_items_widget.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = 'LoginScreen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const FormHeaderWidget(
              image: 'assets/images/banners/login_banner.png',
              title: 'Welcome Back',
              subtitle: "Explore your trip easily!",
            ),
            LoginForm(),
            LoginItemWidget(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => BottomBar());
        },
        mini: true,
        backgroundColor: Colors.grey.shade100,
        elevation: 0.0,
        child: const Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.black,
          size: 20,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }
}
