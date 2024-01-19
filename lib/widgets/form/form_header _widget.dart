import 'package:flutter/material.dart';


class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    required this.image,
     this.height,
    required this.title,
    required this.subtitle,
    Key? key,
  }) : super(key: key);

  final String image, title, subtitle;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: Image.asset(
            image,
            height: MediaQuery.of(context).size.height*0.26,
          ),
        ),
        Text("gf"
          // title,
          // style: StylesText.headLineStyle1,
        ),
        Text("grff"
          // subtitle,
          // style: Styles.headLineStyle7,
        ),
      ],
    );
  }
}
