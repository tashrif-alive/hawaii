import 'package:flutter/material.dart';
import 'package:hawaii/screens/components/banners/banners.dart';
import '../../widgets/navigation_bar/user_tab_bar.dart';
class UserDashboard extends StatefulWidget {
  static String routeName = 'UserDashboard';
  const UserDashboard({super.key});

  @override
  State<UserDashboard> createState() => _UserDashboardState();
}

class _UserDashboardState extends State<UserDashboard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UserAppBar(), 
      body: Column(
        children: [
         Poster()
        ],
      ),
    );
  }
}


