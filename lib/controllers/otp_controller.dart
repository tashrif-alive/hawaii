// import 'package:get/get.dart';
// import 'package:hawai_jubu/src/repository/auth_repo/auth_repo.dart';
// import 'package:hawai_jubu/src/view/_screen/dashboard/dashboard.dart';
//
// class OtpController extends GetxController{
//   static OtpController get instance=> Get.find();
//
//   void verifyOtp (String otp) async{
//     var isverified = await AuthenticationRepository.instance.verifyOtp(otp);
//     isverified? Get.offAll(const DashBoard()) : Get.back();
//   }
// }