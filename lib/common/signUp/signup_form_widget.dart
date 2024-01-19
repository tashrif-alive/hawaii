import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hawaii/controllers/singup_controller.dart';
import 'package:hawaii/models/user_model.dart';


class SignUpFormSection extends StatelessWidget {
  const SignUpFormSection({
    Key? key,
  }) : super(key: key);

  static final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final registerController = Get.put(SignUpController());

    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: registerController.fullName,
              validator: (value) {
                // Is Empty Validation
                if (value == null || value.isEmpty) {
                  return 'Full Name Is Required!';
                }
                // Return Null If Valid
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
            SizedBox(height: 5,),
            TextFormField(
              controller: registerController.email,
              validator: (value) {
                // Is Empty Validation
                if (value == null || value.isEmpty) {
                  return 'Email Is Required!';
                }
                // Email Field Validation
                if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                  return "Please Enter a Valid Email";
                }
                // Return Null If Valid
                return null;
              },
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none),
                  fillColor: Colors.white60,
                  filled: true,
                  hintText: "Email"),
            ),
            SizedBox(height: 5,),
            TextFormField(
              controller: registerController.phoneNum,
              validator: (value) {
                // Is Empty Validation
                if (value == null || value.isEmpty) {
                  return 'Phone Number Is Required!';
                }
                if (value.length <= 10) {
                  return 'Phone Number Must Be of 11 Digit';
                }
                // Return Null If Valid
                return null;
              },
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone_android_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none),
                  fillColor: Colors.white60,
                  filled: true,
                  hintText: "Phone"),
            ),
            SizedBox(height: 5,),
            TextFormField(
              controller: registerController.password,
              validator: (value) {
                // Is Empty Validation
                if (value == null || value.isEmpty) {
                  return 'Password Is Required!';
                }
                // Return Null If Valid
                return null;
              },
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none),
                  fillColor: Colors.white60,
                  filled: true,
                  hintText: "Password"),
            ),
        Row(
          children: [
            Obx(
                  () => Checkbox(
                  value: SignUpController.instance.isAdmin.value,
                  onChanged: (value) =>registerController.isAdmin
                      .value = !registerController.isAdmin.value),
            ),
            Text(
              "Is Admin?",
              style: Theme.of(context).textTheme.bodyMedium,
            ),],),
            SizedBox(height: 15,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    final userData = UserModel(
                      id: registerController.email.text.trim(),
                      fullName: registerController.fullName.text.trim(),
                      phone: registerController.phoneNum.text.trim(),
                      email: registerController.email.text.trim(),
                      password: registerController.password.text.trim(),
                    );
                     SignUpController.instance.signUp();
                    // SignUpController.instance.signUp;
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
