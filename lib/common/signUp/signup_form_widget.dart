import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hawaii/models/user_model.dart';

import '../../controllers/singup_controller.dart';

class SignUpFormSection extends StatelessWidget {
  static final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final registerController = Get.put(SignUpController());

    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: registerController.fullName,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Full Name Is Required!';
                }
                return null;
              },
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none),
                  fillColor: Colors.white60,
                  filled: true,
                  hintText: "Full Name"),
            ),
            TextFormField(
              controller: registerController.email,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Email Is Required!';
                }
                return null;
              },
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none),
                  fillColor: Colors.white60,
                  filled: true,
                  hintText: "Email"),
            ),
            TextFormField(
              controller: registerController.phoneNum,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Phone Number Is Required!';
                }
                return null;
              },
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none),
                  fillColor: Colors.white60,
                  filled: true,
                  hintText: "Phone Number"),
            ),
            TextFormField(
              controller: registerController.password,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Password Is Required!';
                }
                return null;
              },
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none),
                  fillColor: Colors.white60,
                  filled: true,
                  hintText: "Password"),
            ),
            // ... (other form fields)

            Row(
              children: [
                Obx(() => Switch(
                      value: registerController.isAdmin.value,
                      onChanged: (value) {
                        registerController.setAdminStatus(value);
                      },
                    )),
                Text(
                  "Register as Admin",
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
                    final userData = UserModel(
                      fullName: registerController.fullName.text.trim(),
                      phone: registerController.phoneNum.text.trim(),
                      email: registerController.email.text.trim(),
                      password: registerController.password.text.trim(),
                    );
                    registerController.signUp();
                  }
                },
                child: Text('Register'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
