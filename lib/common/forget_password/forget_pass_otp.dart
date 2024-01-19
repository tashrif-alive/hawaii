import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.brown.shade100,
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
              "gfgj"
                // jOtpTitle,
                // style: GoogleFonts.montserrat(
                //   fontWeight: FontWeight.bold,
                //   fontSize: 70,
                ),

              Text("rt"
                // jOtpSubTitle.toUpperCase(),
                // style: Styles.headLineStyle3,
              ),
              SizedBox(
                height: 30,
              ),
              const Text(
                "ttrr"
                // "$jOtpMessage tashrifalive@gmail.com",
                // textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.72,
                height: MediaQuery.of(context).size.height * 0.060,
                child: ElevatedButton(
                  onPressed: () {
                    // Continue button logic goes here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black87,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                  ),
                  child: Text("Continue"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
