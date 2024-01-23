import 'package:flutter/material.dart';
import 'package:hawaii/screens/components/banners/banners.dart';
import '../../widgets/navigation_bar/search_bar_widget.dart';
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
      backgroundColor: Colors.white,
      appBar: const UserAppBar(),
      body: Stack(
        children: [
          Poster(),
          Positioned(
            top: 120.0,
            left: 8.0,
            right: 8.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48.0),
              child: SearchBarWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
