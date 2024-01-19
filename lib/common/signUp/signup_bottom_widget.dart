import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hawaii/common/signIn/login.dart';


class SignUpBottomWidget extends StatelessWidget {
  const SignUpBottomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Have an account?"),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
            );
          },
          child: const Text(
            "SignIn",
            style: TextStyle(
              color: Colors.deepOrange,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}