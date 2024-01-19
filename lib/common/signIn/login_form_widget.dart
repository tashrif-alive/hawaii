import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:hawaii/common/forget_password/buildshowmodalbottomsheet.dart';
import 'package:hawaii/controllers/signin_controller.dart';


class LoginForm extends StatelessWidget {
  LoginForm({
    Key? key,
  }) : super(key: key);

  RxBool isVisible = true.obs;
  static final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final loginController = Get.put(LoginController());
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: loginController.email,
              validator: (value) {
                // Is Empty Validation
                if (value == null || value.isEmpty) {
                  return 'Email is Required!';
                }
                // Email Field Validation
                if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                  return "Please Enter a Valid Email";
                }
                // Return Null If Valid
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
                      borderSide: BorderSide.none),
                  fillColor: Colors.white60,
                  filled: true),
            ),
            const SizedBox(
              height: 15,
            ),
            Obx(
              () => TextFormField(
                obscureText: isVisible.value,
                controller: loginController.password,
                validator: (value) {
                  // Is Empty Validation
                  if (value == null || value.isEmpty) {
                    return 'Password is Required!';
                  }
                  // Return Null If Valid
                  return null;
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.fingerprint),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none),
                  fillColor: Colors.white60,
                  filled: true,
                  suffixIcon: IconButton(
                    onPressed: () => passVisibility(),
                    icon: isVisible.value
                        ? Icon(Icons.visibility)
                        : Icon(Icons.visibility_off),
                  ),
                ),
              ),
            ),
            SizedBox(),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  ForgetPasswordScreen.buildShowModalBottomSheet(context);
                },
                child: Text("Forget Password?"),
              ),
            ),
            SizedBox(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    LoginController.instance.loginUser(
                        loginController.email.text.trim(),
                        loginController.password.text.trim());
                  }
                },
                child: Text("Login"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  passVisibility() {
    isVisible.value = !isVisible.value;
  }
}
