import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hawaii/common/signUp/signup.dart';


class BottomWidget extends StatelessWidget {
  const BottomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Don't have an account?"),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SignUpScreen(),
              ),
            );
          },
          child: const Text(
            "Signup",
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