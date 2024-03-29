import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:hawaii/common/signIn/adminuser_signin.dart';
import 'package:hawaii/screens/contact_us/contact_us.dart';
import 'package:hawaii/screens/users/user_dashboard.dart';
import '../../screens/users/components/hawaii_services/services.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 70,
          elevation: 1,
          backgroundColor: Colors.grey.shade50,
          surfaceTintColor: Colors.red,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations:  [
            NavigationDestination(
              icon: SvgPicture.asset(
                'assets/icons/home.svg',
                height: 40, // Replace with the desired height
              ),
              selectedIcon: SvgPicture.asset(
                'assets/icons/home_active.svg',
                height: 40, // Replace with the desired height
              ),
              label: "Home",
            ),
            NavigationDestination(
              icon: SvgPicture.asset(
                'assets/icons/trip.svg',
                height:40, // Replace with the desired height
              ),
              selectedIcon: SvgPicture.asset(
                'assets/icons/trip_active.svg',
                height: 40, // Replace with the desired height
              ),
              label: "My Trip",
            ),
            NavigationDestination(
              icon: SvgPicture.asset(
                'assets/icons/contact.svg',
                height: 40, // Replace with the desired height
              ),
              selectedIcon: SvgPicture.asset(
                'assets/icons/contact_active.svg',
                height: 40, // Replace with the desired height
              ),
              label: "Contact Us",
            ),
            NavigationDestination(
              icon: SvgPicture.asset(
                'assets/icons/more.svg',
                height: 40, // Replace with the desired width
              ),
              selectedIcon: SvgPicture.asset(
                'assets/icons/more_active.svg',
                height: 40, // Replace with the desired height
              ),
              label: "More",
            ),
          ],

        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

//..................Navigation_Controller....................
class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const UserDashboard(),
    Services(textTheme: Typography.blackCupertino,),
    const ContactUs(),
    LoginPage()
  ];
}
