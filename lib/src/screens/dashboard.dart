import 'package:flutter/material.dart';
import 'package:hawai_jubu/src/screens/search_bar/search_boxs.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar:
          // const TopBar(),
          AppBar(
        title: const Text('airVenture'),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_none_outlined,
              size: 25,
            ),
            splashRadius: 25,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.account_circle,
              size: 25,
            ),
            splashRadius: 25,
            onPressed: () {},
          ),
        ],
        elevation: 5,
        // backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          // Add a flexibleSpace to set the gradient background
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[Color(0xFFfc8a28), Color(0xFFc55c00)],
            ),
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),

        // Set background color to transparent
      ),

      //tashrif_jubaer

      body: Container(
        child: Column(
          children: const [
            Expanded(
              child: SizedBox(
                height: 380,
                width: double.infinity,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[Color(0xFF988459), Color(0xFF635738)],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(child: SearchBoxs()),
          ],
        ),
      ),
    );
  }
}
