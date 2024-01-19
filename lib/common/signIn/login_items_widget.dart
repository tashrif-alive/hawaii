import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginItemWidget extends StatelessWidget {
  const LoginItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0,bottom: 45.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: Divider(thickness: 2),
                ),
                const Text("Or continue with"),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: Divider(thickness: 2),
                )
              ],
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
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Transform.scale(
                scale: 1.65,
                child: Image.asset(
                  "assets/images/icon/google_logo.png",
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}