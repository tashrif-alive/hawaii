import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ForgetPasswordButtonWidget extends StatelessWidget {
  const ForgetPasswordButtonWidget({
    required this.buttonIcon,
    required this.title,
    required this.subtitle,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final IconData buttonIcon;
  final String title;
  final String subtitle;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Colors.grey.shade200,
        ),
        child: Row(
          children: [
            Icon(buttonIcon, size: 50),
            SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,),
                Text(subtitle),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
