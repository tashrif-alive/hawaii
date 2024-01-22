import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hawaii/utils/app_size.dart';
import 'package:hawaii/widgets/animations/fade_inout_controller.dart';
import 'package:hawaii/widgets/animations/fade_inout_model.dart';
import 'package:hawaii/widgets/animations/fade_inout_view.dart';


class SplashScreen extends StatelessWidget {
  static String routeName = 'SplashScreen';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var TTS_MQuery = MediaQuery.of(context);

    final deviceWidth = TTS_MQuery.size.width;

    final TTS_Anim_Controller = Get.put(TTS_AnimationController());
    TTS_Anim_Controller.startSplashAnimation();

    return Scaffold(
      body: Stack(
        children: [
          JAV_FadeInOutAnim(
            duration: 1600,
            animPos: TTS_AnimatePosition(
              topBefore: 80,
              topAfter: 80,
              leftBefore: TTS_DefaultSize,
              leftAfter: TTS_DefaultSize,
            ),
            child: Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(100),
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                ),
                color: Colors.deepPurple,
              ),
            ),
          ),
          JAV_FadeInOutAnim(
            duration: 1000,
            animPos: TTS_AnimatePosition(
              topBefore: 200,
              topAfter: 200,
              leftBefore: -80,
              leftAfter: TTS_DefaultSize,
              // opacityStart: 0.5,
              // opacityEnd: 1,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("airVenture",
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                          fontSize: 24,
                          color: Colors.yellow,
                        )),
              ],
            ),
          ),
          JAV_FadeInOutAnim(
            duration: 2000,
            animPos: TTS_AnimatePosition(
              topBefore: 280,
              topAfter: 240,
              leftBefore: TTS_DefaultSize,
              leftAfter: TTS_DefaultSize,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("air_tagline",
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                          fontSize: 32.0,
                          color: Colors.black87,
                          // fontStyle: FontStyle.italic,
                          // letterSpacing: 1.5,
                        )),
              ],
            ),
          ),
          JAV_FadeInOutAnim(
            duration: 800,
            animPos: TTS_AnimatePosition(
              bottomBefore: 230,
              bottomAfter: 200,
            ),
            child: SizedBox(
              width: deviceWidth * 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image(
                  //     image: AssetImage(jSplashItem),
                  //     width: deviceWidth * 0.75),
                ],
              ),
            ),
          ),
          JAV_FadeInOutAnim(
            duration: 1600,
            animPos: TTS_AnimatePosition(
              bottomBefore: -250,
              bottomAfter: -100,
              rightBefore: -250,
              rightAfter: -100,
            ),
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(300),
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
