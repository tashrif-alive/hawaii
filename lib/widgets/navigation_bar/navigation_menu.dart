import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:hawaii/screens/users/user_dashboard.dart';
import 'package:iconsax/iconsax.dart';

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
          height: 60,
          elevation: 1,
          backgroundColor: Colors.grey.shade50,
          surfaceTintColor: Colors.grey.shade100,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(
                icon: Icon(Iconsax.home_24),
                selectedIcon: Icon(Iconsax.home_25),
                label: "Home"),
            NavigationDestination(
                icon: Icon(Iconsax.),
                selectedIcon: Icon(Iconsax.user),
                label: "Home"),
            NavigationDestination(
                icon: Icon(Iconsax.messages),
                selectedIcon: Icon(Iconsax.messages_25),
                label: "Home"),
            NavigationDestination(
                icon: Icon(Iconsax.menu5),
                selectedIcon: Icon(Iconsax.home_25),
                label: "Home"),
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
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.red,
    )
  ];
}
