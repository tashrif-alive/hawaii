import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});
  @override
  _NotificationScreenState createState() => _NotificationScreenState();

}

class _NotificationScreenState extends State<NotificationScreen> {
  List<Map<String, dynamic>> notifications = [
    {
      'title': 'Paid',
      'subtitle': 'Thanks, Anuva for choosing  Biman Bangladesh ',
      'icon': Icons.payment_rounded,
      'color': const Color(0xFF48C9B0),
      'date': 'Apr 15, 2023',
    },
    {
      'title': 'Payment Details',
      'subtitle': 'Jubaer Hasan paid for your trip',
      'icon': Icons.money_off,
      'color': const Color(0xdf9d4c80),
      'date': 'Apr 15, 2023',
    },
    {
      'title': 'Flight Details',
      'subtitle': 'Your flight to India has been delayed',
      'icon': Icons.flight_rounded,
      'color': const Color(0xFFfeca57),
      'date': 'Apr 15, 2023',
    },
    {
      'title': 'Trending',
      'subtitle': 'The latest trends in fashion and style',
      'icon': Icons.trending_up_rounded,
      'color': const Color(0xFFff6b6b),
      'date': 'Apr 15, 2023',
    },
  ];

  void clearNotifications() {
    setState(() {
      notifications.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold, fontSize: 17)),
        centerTitle: true,

        actions: [
          IconButton(
            icon: const Icon(Icons.clear_all_rounded),
            onPressed: () => clearNotifications(),
          ),
        ],
        flexibleSpace: Container(
          // Add a flexibleSpace to set the gradient background
          decoration: const BoxDecoration(

            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[Color(0xFFfc8a28), Color(0xFFc55c00)],
            ),
          ),
        ),
      ),
      body: notifications.isEmpty
          ? const Center(child: Text("No notifications"))
          : ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: notifications[index]['color'],
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              leading: Icon(
                notifications[index]['icon'],
                size: 40,
                color: Colors.white,
              ),
              title: Text(
                notifications[index]['title'],
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                notifications[index]['subtitle'],
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    notifications[index]['date'],
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
