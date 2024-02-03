import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hawaii/common/signIn/login.dart';
import '../../utils/image_strings.dart';
class AdminAppBar extends StatelessWidget implements PreferredSizeWidget{
  const AdminAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey.shade50,
      elevation: 0.4,
      title: Image.asset(
        Hawaii_logo,
        height: MediaQuery.of(context).size.height*0.05,
      ),
      centerTitle: false,
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications,color: Colors.black87,),
          onPressed: () {},
        ),

        IconButton(
          icon: const Icon(Icons.person, color: Colors.black87,),
          onPressed: () {
            Get.to(() => LoginScreen());
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}