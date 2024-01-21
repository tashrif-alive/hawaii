import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../signIn/login.dart';

class SignUpItemWidget extends StatelessWidget {
  const SignUpItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.15,
                child: Divider(thickness: 1.4),
              ),
              Text("Or register with"),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.15,
                child: Divider(thickness: 1.4),
              )
            ],
          ),
          SizedBox(height: 15,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.all(10),
                  side: BorderSide.none,
                  backgroundColor: Colors.white54,
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Transform.scale(
                    scale: 1.65,
                    child: Image.asset(
                      "assets/images/logos/google.png",
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),

              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.all(10),
                  side: BorderSide.none,
                  backgroundColor: Colors.white54,
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Transform.scale(
                    scale: 1.07,
                    child: Image.asset(
                      "assets/images/logos/Facebook.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
      Row(
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
                color: Colors.black87,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      )
        ],
      ),
    );
  }
}
