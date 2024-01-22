import 'package:flutter/material.dart';

import '../../utils/image_strings.dart';
class UserAppBar extends StatelessWidget implements PreferredSizeWidget{
  const UserAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey.shade50,
      elevation: 0,
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
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}