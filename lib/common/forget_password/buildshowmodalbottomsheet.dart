import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'forget_password_botton_widget.dart';
import 'forgetpassword_text.dart';
import 'forgetpasword_mail.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      builder: (context) => Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.brown.shade100,
                radius: 35,
                child: const Icon(
                  Icons.lock_rounded,
                  size: 45,
                  color: Colors.black87,
                ),
              ),
            ),
            Center(
              child: Text(
                "Trouble in login?",
              ),
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    "Choose one to reset password",
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ForgetPasswordButtonWidget(
              buttonIcon: Icons.email_outlined,
              title: 'Email',
              subtitle: 'Reset via mail varification',
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ForgetPasswordMailScreen(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ForgetPasswordButtonWidget(
              buttonIcon: Icons.phone_android,
              title: 'Phone',
              subtitle: 'Reset via Text messege',
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ForgetPasswordTextScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
