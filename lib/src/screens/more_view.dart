import 'package:flutter/material.dart';

class MoreView extends StatelessWidget {
  const MoreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade50,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 40),
          child: ListView(
            children: [
              ListTile(
                title: const Text("Log In to Explore"),
                subtitle: const Text("Get started >"),
                onTap: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                leading: const Icon(Icons.perm_phone_msg_sharp,
                    color: Colors.deepOrange),
                title: const Text("Customer Service"),
                subtitle: const Text("Get help your booking & more"),
                splashColor: Colors.deepOrange,
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.notifications,
                  color: Colors.deepOrange,
                ),
                title: const Text("Notifications"),
                subtitle: const Text("View all your notifications"),
                trailing: Text(
                  "99+",
                ),
                splashColor: Colors.deepOrange,
                onTap: () {},
              ),
              const Divider(height: 3),
              ListTile(
                leading: const Icon(
                  Icons.credit_card,
                  color: Colors.deepOrange,
                ),
                title: const Text("Manage Payment Mathods"),
                subtitle: const Text("Add & edit your Mathods"),
                splashColor: Colors.deepOrange,
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.share,
                  color: Colors.deepOrange,
                ),
                title: const Text("Share App"),
                subtitle: const Text("Share the app with your friends"),
                splashColor: Colors.deepOrange,
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.thumb_up,
                  color: Colors.deepOrange,
                ),
                title: const Text("Rate Us"),
                subtitle: const Text("Love this app?Rate us"),
                splashColor: Colors.deepOrange,
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.settings,
                  color: Colors.deepOrange,
                ),
                title: const Text("Settings"),
                subtitle: const Text("Set notifications, sign out, etc."),
                splashColor: Colors.deepOrange,
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
