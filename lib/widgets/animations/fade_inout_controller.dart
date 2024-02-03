import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hawaii/widgets/navigation_bar/navigation_menu.dart';



class TTS_AnimationController extends GetxController{
  static TTS_AnimationController get find => Get.find();

  RxBool animate = false.obs;

  Future startSplashAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(Duration(milliseconds: 5000));
    animate.value = false;
    await Future.delayed(Duration(milliseconds: 2000));
    Get.offAll(() => NavigationMenu());
  }
  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
  }
}
