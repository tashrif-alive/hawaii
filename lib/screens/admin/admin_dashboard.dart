import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hawaii/screens/admin/components/all_user_details_admin.dart';
import 'package:hawaii/widgets/navigation_bar/admin_tab_bar.dart';

class AdminDashboard extends StatefulWidget {
  static String routeName = 'AdminDashboard';

  const AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AdminAppBar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'User Statistics',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            GestureDetector(
              onTap: () {
                Get.to(UserDetailsAdmin());
                print("Card tapped!");
              },
              child: Card(
                elevation: 2,
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/users.svg',
                      width: MediaQuery.of(context).size.width * 0.05,
                      height: MediaQuery.of(context).size.height * 0.08,
                    ),
                    Column(
                      children: [
                        Text(
                          "15",
                          style: GoogleFonts.roboto(
                              fontSize: 30, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "Users",
                          style: GoogleFonts.roboto(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
