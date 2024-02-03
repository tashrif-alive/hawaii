import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hawaii/screens/users/components/search/ticket_controller.dart';
import 'package:intl/intl.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../../models/search_model.dart';
import 'destination_details_page.dart';
import 'moved_ticket_model.dart';


class Flight_Result extends StatelessWidget {
  final List<FlightSearchModel> searchResults;

  Flight_Result({required this.searchResults});

  @override
  Widget build(BuildContext context) {
    final TicketController _ticketController = TicketController();
    final User? user = FirebaseAuth.instance.currentUser;
    final String loggedInUserEmail = user?.email ?? "unknown@example.com";

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Departing Flights",
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
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
      body: ListView.builder(
        itemCount: searchResults.length,
        itemBuilder: (context, index) {
          FlightSearchModel flight = searchResults[index];
          final formattedDate = DateFormat('dd/MM/yy').format(flight.date);

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DestinationDetailsPage(flight: flight),
                ),
              );
            },
            child: Card(
              margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Colors.white70,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15, top: 15, bottom: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            InkWell(
                              child: Material(
                                borderRadius: BorderRadius.circular(10),
                                elevation: 10,
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                      fit: BoxFit.fitHeight,
                                      image: AssetImage("assets/images/img_1.png"),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  flight.airline ?? '', // handle nullable value
                                  style: GoogleFonts.poppins(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '${flight.fno}',
                                  style: GoogleFonts.poppins(
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '\$${flight.price ?? 0}', // Handle nullable value
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                                fontSize: 13,
                              ),
                            ),
                            Text(
                              flight.flightClass ?? '', // Handle nullable value
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Divider(thickness: 1),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15, bottom: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              flight.fromDestination ?? '', // Handle nullable value
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "Duration",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              flight.toDestination ?? '', // Handle nullable value
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '$formattedDate',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.deepOrange,
                                  size: 20,
                                ),
                              ),
                            ),
                            Text(
                              '$formattedDate',
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              flight.arrival ?? '',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Text(
                                flight.duration ?? '', // Handle nullable value
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                            Text(
                              flight.departure ?? '',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Center(
                          child: ElevatedButton(
                            onPressed: () async {
                              await _ticketController.moveTicketToNewDatabase(
                                loggedInUserEmail,
                                MovedTicketModel(

                                  userEmail: loggedInUserEmail,
                                  airline: flight.airline ?? '', // Handle nullable value
                                  fromDestination: flight.fromDestination ?? '', // Handle nullable value
                                  toDestination: flight.toDestination ?? '', // Handle nullable value
                                  price: flight.price ?? 0, // Handle nullable value
                                  date: flight.date ?? DateTime.now(), // Handle nullable value
                                  flightClass: flight.flightClass ?? '', // Handle nullable value
                                  duration: flight.duration ?? '',
                                  fno: flight.fno??'',// Handle nullable value
                                  arrival: flight.arrival??'',// Handle nullable value
                                  departure: flight.departure??'',// Handle nullable value
                                ),
                              );

                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Purchase Success'),
                                ),
                              );
                            },
                            child: const Text('Purchase Ticket'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
