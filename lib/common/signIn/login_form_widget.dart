import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hawaii/controllers/signin_controller.dart';

import '../../controllers/singup_controller.dart';

class LoginForm extends StatelessWidget {
  static final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final loginController = Get.put(SignInController());

    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: SignUpController.instance.email,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Email is Required!';
                }
                if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                  return "Please Enter a Valid Email";
                }
                return null;
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.person_outline_outlined,
                  color: Colors.black54,
                ),
                hintText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                fillColor: Colors.white60,
                filled: true,
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              controller: SignUpController.instance.password,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Password is Required!';
                }
                // You can add more conditions for password validation if needed
                return null;
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.password,
                  color: Colors.black54,
                ),
                hintText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                fillColor: Colors.white60,
                filled: true,
              ),
            ),
            // ... (other form fields)

            Row(
              children: [
                Obx(() => Switch(
                  value: loginController.isAdmin.value,
                  onChanged: (value) {
                    loginController.setAdminStatus(value);
                  },
                )),
                Text(
                  "Login as Admin",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),

            // ... (other form fields)

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    loginController.login();
                  }
                },
                child: Text('Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
