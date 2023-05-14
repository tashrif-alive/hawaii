import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hawai_jubu/src/screens/contact_us.dart';
import 'package:hawai_jubu/src/screens/dashboard.dart';
import 'package:hawai_jubu/src/screens/more_view.dart';
import 'package:hawai_jubu/src/screens/search_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const DashBoard(),
    const SearchScreen(),
    const ContactUs(),
    const MoreView()
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white54,
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
        elevation: 5,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.orange.shade900,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.blueGrey,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: "Search"),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_phone_msg_sharp),
            activeIcon: Icon(Icons.perm_phone_msg),
            label: 'Contact Us',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_vert), label: "Profile"),
        ],
      ),
    );
  }
}
