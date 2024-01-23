import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MidBarWidget extends StatelessWidget {
  final IconData iconData;
  final String text;
  final VoidCallback onTap;

  const MidBarWidget({
    super.key,
    required this.iconData,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox.fromSize(
          size: Size(90, 65),
          child: InkWell(
            splashColor: Colors.deepOrange,
            onTap: onTap,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  iconData,
                  color: Colors.deepOrange,
                ),
                SizedBox(height: 5),
                Text(
                  text,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500, fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
