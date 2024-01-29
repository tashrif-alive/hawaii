import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hawaii/screens/components/search/search_page.dart';
import 'package:intl/intl.dart';
import '../../../models/search_model.dart';

class DestinationDetailsPage extends StatelessWidget {
  final FlightSearchModel flight;

  DestinationDetailsPage({required this.flight});

  @override
  Widget build(BuildContext context) {
    final formattedDate = DateFormat('dd/MM/yy').format(flight.date);

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text("Flight Detail",
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold, fontSize: 17)),
        centerTitle: true,
        elevation: 3,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[Color(0xFFfc8a28), Color(0xFFc55c00)],
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15, top: 15),
              child: Image.network(""),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${flight.fromDestination}',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal, fontSize: 14),
                ),
                Text(
                  '${flight.toDestination}',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal, fontSize: 14),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
            child: Text(
              "Flight Detail",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.normal, fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Card(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Material(
                          borderRadius: BorderRadius.circular(10),
                          elevation: 5,
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(""),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${flight.airline}',
                              style: GoogleFonts.poppins(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "BDA-189",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Divider(thickness: 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('$formattedDate',
                            style: GoogleFonts.montserrat(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                        Text('Duration',
                            style: GoogleFonts.poppins(
                                fontSize: 14, fontWeight: FontWeight.normal)),
                        Text('$formattedDate',
                            style: GoogleFonts.montserrat(
                                fontSize: 14, fontWeight: FontWeight.bold))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('$formattedDate'),
                        Text('${flight.duration}'),
                        Text('$formattedDate')
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
            child: Text(
              "Flight Facilities",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.normal, fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Class",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal, fontSize: 14),
                        ),
                        Text(
                          '${flight.flightClass}',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Colors.green),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Insurance",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal, fontSize: 14),
                        ),
                        Text(
                          "Yes",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Colors.green),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Refundable",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal, fontSize: 14),
                        ),
                        Text(
                          "Yes",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Colors.green),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Others",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal, fontSize: 14),
                        ),
                        Text(
                          "Baggage 20 Kg",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal, fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
            child: Text(
              "Price Detail",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.normal, fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Seat",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal, fontSize: 14),
                        ),
                        Text(
                          'C2',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal, fontSize: 14),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Price",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal, fontSize: 14),
                        ),
                        Text(
                          '\$${flight.price}',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                      ],
                    ),
                    const Divider(thickness: 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal, fontSize: 14),
                        ),
                        Text(
                          '\$${flight.price}',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.green),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.92,
              height: 46.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  colors: [Color(0xFFff9133), Color(0xFFe16c06)],
                ),
              ),
              child: ElevatedButton(
                onPressed: () => Get.to(() => SearchPage(),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Continue',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal, fontSize: 16),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
