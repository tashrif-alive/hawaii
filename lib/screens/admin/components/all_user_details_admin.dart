import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hawaii/screens/admin/components/adminuser_component.dart';
import 'package:hawaii/screens/admin/components/search_admin_items.dart';
import 'package:hawaii/screens/users/user_list.dart';

import '../admin_dashboard.dart';

class UserDetailsAdmin extends StatefulWidget {
  const UserDetailsAdmin({Key? key}) : super(key: key);

  @override
  State<UserDetailsAdmin> createState() => _UserDetailsAdminState();
}

class _UserDetailsAdminState extends State<UserDetailsAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade50,
        leading: IconButton(
          onPressed: () {
            // Use Get.off instead of Get.to
            Get.off(const AdminDashboard());
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Users",
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SearchAdminBarWidget(),
                  Container(
                    height: MediaQuery.of(context).size.width * 0.12,
                    width: MediaQuery.of(context).size.width * 0.12,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black87,
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/filter.svg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.blue,
            child: const AdminuserComponent(),
          ),

          Container(
            height: 500,
            width: double.infinity,
            color: Colors.blue,
            child: const UserList(),
          ),
        ],
      ),
    );
  }
}
