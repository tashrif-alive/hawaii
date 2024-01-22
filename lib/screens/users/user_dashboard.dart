import 'package:flutter/material.dart';
import 'package:hawaii/utils/image_strings.dart';
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
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   title: Image.asset(
      //     Hawaii_logo,
      //     height: MediaQuery.of(context).size.height*0.3,
      //   ),
      //   centerTitle: false,
      //   actions: [
      //     IconButton(
      //       icon: Icon(Icons.notifications,color: Colors.black87,),
      //       onPressed: () {},
      //     ),
      //
      //     IconButton(
      //       icon: Icon(Icons.person, color: Colors.black87,),
      //       onPressed: () {},
      //     ),
      //   ],
      // ),
      body: Column(
        children: [
          Container(color: Colors.cyanAccent,
            height: 130,
            width: double.infinity,
            child: Row(crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(Hawaii_logo,),
                Row(

                  children: [
                    IconButton(
                      icon: Icon(Icons.notifications,color: Colors.black87,),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.notifications,color: Colors.black87,),
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
          Center(
            child: Text('Your content goes here!'),
          ),
        ],
      ),
    );
  }
}
