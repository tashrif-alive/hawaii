import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hawaii/screens/contact_us/pre_booking_qs_hotel.dart';
import 'package:hawaii/screens/contact_us/pre_booking_qs_packages.dart';
import 'package:hawaii/screens/contact_us/pre_bookings_qs.dart';


class PrebookigTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text('Pre-booking Queries', style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Colors.white)),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Color(0xFFfc8a28), Color(0xFFc55c00)],
              ),
            ),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Flights',),
              Tab( text: 'Hotels',),
              Tab(text: 'Packages',),
            ],
          ),
        ),

        body:   const TabBarView(

          children: [
            PreBookQus(),
            PreBookQusHotel(),
            PreBookQusPack()
          ],
        ),
      ),
    );
  }
}
