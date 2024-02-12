import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hawaii/common/signIn/user_login_form.dart';
import '../../widgets/navigation_bar/navigation_menu.dart';
import '../signUp/signup.dart';

class UserLoginScreen extends StatelessWidget {
  static String routeName = 'UserLoginScreen';
  const UserLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child:
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: Center(
                      child:
                          Image.asset("assets/images/banners/login_banner.png")),
                ),
                Text(
                  "Welcome Back!",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  height: 5,
                ),
                UserLoginForm(),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.15,
                            child: Divider(thickness: 1.4),
                          ),
                          const Text("Or continue with"),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.15,
                            child: Divider(thickness: 1.4),
                          )
                        ],
                      ),
                      SizedBox(height: 5),
                      OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            padding: EdgeInsets.all(10),
                            side: BorderSide.none,
                            backgroundColor: Colors.grey.shade50,
                          ),
                          child: const Text("Google Account")),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Don't have an account?"),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUpScreen(),
                                ),
                              );
                            },
                            child: const Text(
                              "Signup",
                              style: TextStyle(
                                color: Colors.black87,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),


        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.back();
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
