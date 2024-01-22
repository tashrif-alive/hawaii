import 'package:get/get.dart';
import 'package:hawaii/controllers/singup_controller.dart';
import 'package:hawaii/repositories/admin_repo/admin_repo.dart';
import 'package:hawaii/repositories/auth_repo/auth_repo.dart';

class SignInController extends GetxController {
  static SignInController get instance => Get.find();

  RxBool isAdmin = false.obs;

  void setAdminStatus(bool isAdmin) {
    this.isAdmin.value = isAdmin;
  }

  Future<void> login() async {
    print("INSIDE LOGIN METHOD");
    print("putting auth repo again");
    Get.put(AuthRepo());
    try {
      final emailText = SignUpController.instance.email.text.trim();
      final passwordText = SignUpController.instance.password.text.trim();

      // Validate email and password if needed

      if (isAdmin.value) {
        // Check if the user is an admin
        final isAdminUser = await AdminRepo.instance.isAdmin(emailText,);
        print("user got admin repo");
        if (isAdminUser) {
          // Handle login as admin
          await Get.find<AuthRepo>().loginEmailPass(emailText, passwordText);
        } else {
          // User is not an admin, handle accordingly
          // You might want to show a message or take appropriate action
          print('User is not an admin !!!');
        }
      } else {
        // Handle login as a regular user

        await Get.find<AuthRepo>().loginEmailPass(emailText, passwordText);
      }
    } catch (e, trace) {
      print('Error during login: $e, trace $trace');
      // Handle error as needed
    }
  }
}
