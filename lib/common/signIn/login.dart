import 'package:flutter/material.dart';
import 'package:hawaii/widgets/form/bottom_form_widget.dart';
import 'package:hawaii/widgets/navigation_bar/bottom_bar.dart';
import 'login_form_widget.dart';
import 'login_header_widget.dart';
import 'login_items_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade50,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: const LoginHeaderWidgets(),
              ),
              LoginForm(),
              LoginItemWidget(),
              SizedBox(height: 20),
              BottomWidget(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const BottomBar(),
            ),
          );
        },
        mini: true,
        backgroundColor: Colors.brown.withOpacity(0.1),
        child: const Icon(
          Icons.close,
          size: 20,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
