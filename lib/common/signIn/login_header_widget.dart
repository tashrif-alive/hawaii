import 'package:flutter/cupertino.dart';



class LoginHeaderWidgets extends StatelessWidget {
  const LoginHeaderWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: Image(
            image:
                const AssetImage('assets/images/banners/login_animation.png'),
            height: MediaQuery.of(context).size.height * 0.26,
          ),
        ),
        Text(
          "Welcome Back",
        ),
        Text(
          "Explore your trip easily!",
        ),
      ],
    );
  }
}
