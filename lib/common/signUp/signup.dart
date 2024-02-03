import 'package:flutter/material.dart';
import 'package:hawaii/common/signUp/signup_form_widget.dart';
import 'package:hawaii/common/signUp/signup_item_widget.dart';
import 'package:hawaii/widgets/form/form_header%20_widget.dart';
import '../../widgets/navigation_bar/navigation_menu.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = 'SignUpScreen';
  const SignUpScreen({Key? key}) : super(key: key);

  get floatingActionButtonLocation => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FormHeaderWidget(
              image: "assets/images/banners/hawaii.jpg",
              title: "Hello!",
              subtitle: "Create an account to explore your journey.",
            ),
            SignUpFormSection(),
            SignUpItemWidget(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const NavigationMenu(),
            ),
          );
        },
        mini: true,
        backgroundColor: Colors.grey.shade100,
        elevation: 0.0,
        child: const Icon(
          Icons.arrow_back_ios_new_outlined,color: Colors.black,
          size: 20,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }
}
