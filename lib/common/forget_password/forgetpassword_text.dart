import 'package:flutter/material.dart';
import 'package:hawaii/common/signIn/login.dart';
import 'package:hawaii/widgets/form/form_field_widget.dart';
import 'package:hawaii/widgets/form/form_header%20_widget.dart';
import 'forget_pass_otp.dart';

class ForgetPasswordTextScreen extends StatelessWidget {
  const ForgetPasswordTextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.brown.shade100,
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              FormHeaderWidget(
                image: 'assets/images/icon/forget.png',
                title: "Forget Pasword",
                subtitle: "Verify with Number to reset your password",
              ),
              SizedBox(
                height: 40,
              ),
              FormFieldWidget(
                prefixIcon: Icons.phone_iphone,
                hintText: 'Phone no.',
                fillColor: Colors.white60,
                filled: true,
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.065,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OtpScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black87,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                  ),
                  child: Text("Continue"),
                ),
              ),
              // ButtonWidget(
              //   title: 'Continue',
              //   onPressed: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => LoginScreen(),
              //       ),
              //     );
              //   },
              // ),
              SizedBox(height: 10,),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.065,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black87,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                  ),
                  child: Text("Back"),
                ),
              ),
              // ButtonWidget(
              //   title: 'Back',
              //   onPressed: (){},
              // )
            ],
          ),
        ),
      ),
    );
  }
}
