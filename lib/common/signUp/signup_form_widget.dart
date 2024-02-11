import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hawaii/models/user_model.dart';
import 'package:hawaii/screens/users/user_dashboard.dart';
import '../../controllers/singup_controller.dart';

class SignUpFormSection extends StatelessWidget {
  static final _formKey = GlobalKey<FormState>();
  final registerController = Get.put(SignUpController());

  void registerButton() {
    if (_formKey.currentState!.validate()) {
      final userData = UserModel(
        fullName: registerController.fullName.text.trim(),
        phone: registerController.phoneNum.text.trim(),
        email: registerController.email.text.trim(),
        password: registerController.password.text.trim(),
      );
      registerController.signUp();
      Get.offAll(() => UserDashboard());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: TextFormField(
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
                    fillColor: Colors.grey.shade50,
                    filled: true,
                    hintText: "Full Name"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: TextFormField(
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
                    fillColor: Colors.grey.shade50,
                    filled: true,
                    hintText: "Email"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: TextFormField(
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
                    fillColor: Colors.grey.shade50,
                    filled: true,
                    hintText: "Phone Number"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: TextFormField(
                controller: registerController.password,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Password Is Required!';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none),
                    fillColor: Colors.grey.shade50,
                    filled: true,
                    hintText: "Password"),
              ),
            ),
            // ... (other form fields)

            Row(
              children: [
                Obx(() => Checkbox(
                      value: registerController.isAdmin.value,
                      onChanged: (value) {
                        registerController.isAdmin.value=!registerController.isAdmin.value;
                        // registerController.setAdminStatus(value!);
                      },
                      checkColor: Colors.white,
                    )),
                Text(
                  "Is Admin?",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),

            // ... (other form fields)

            Padding(
              padding: const EdgeInsets.all(6.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    registerButton();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                  ),
                  child: Text('Register'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
