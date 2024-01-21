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
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: TextFormField(
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
                  fillColor: Colors.grey.shade50,
                  filled: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: TextFormField(
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
                    Icons.lock,
                    color: Colors.black54,
                  ),
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: Colors.grey.shade50,
                  filled: true,
                ),
              ),
            ),

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


            Padding(
              padding: const EdgeInsets.all(6.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print("LOGIN PRESSED2");
                    if (_formKey.currentState!.validate()) {
                      loginController.login();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,),
                  child: Text('Login'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
