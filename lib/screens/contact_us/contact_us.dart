import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hawai_jubu/src/view/_screen/contact_us/tab.dart';
import 'package:hawai_jubu/src/view/profile/update_profile.dart';
import '../../../services/payment_card/add_card.dart';
import 'assurance.dart';
import 'booking_issues.dart';
import 'covidsafty.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Us",
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 17,color: Colors.white)),
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
      ),
      backgroundColor: Colors.brown.shade50,
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.all(15),
            ),
            ListTile(
              leading: const CircleAvatar(
                radius: 17,
                backgroundColor: Colors.deepOrange,
                child: Icon(Icons.warning, size: 20, color: Colors.white70),
              ),
              title: Text("Please note:",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontSize: 13)),
              subtitle: Text(
                  "airVenture representatives will never ask for any personal data like credit/debit card number, CVV, OTP, card details, userIDs, passwords,etc.Beware of any one who is claiming to be associate with airVenture. Acting on any requests may make victim of fraud, potentially leading to the loss of valuable information or money.",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal, fontSize: 14)),
              tileColor: Colors.white,
            ),
            const SizedBox(
              height: 25,
            ),
            const ListTile(
              leading: Text("All Services"),
            ),
            ListTile(
              leading: const CircleAvatar(
                radius: 16,
                backgroundColor: Colors.black12,
                child: Icon(
                  Icons.card_travel,
                  size: 20,
                  color: Colors.deepOrange,
                ),
              ),
              title: const Text("Issue with Booking"),
              subtitle: Text("Facing issue with an existing booking",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal, fontSize: 14)),
              trailing: const Icon(Icons.chevron_right),
              tileColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const IssuesBooking(),
                  ),
                );
              },
            ),
            const Divider(
              height: 1.5,
            ),
            ListTile(
              leading: const CircleAvatar(
                radius: 16,
                backgroundColor: Colors.black12,
                child: Icon(
                  Icons.manage_accounts,
                  size: 20,
                  color: Colors.deepOrange,
                ),
              ),
              title: const Text("Account Settings"),
              subtitle: Text("Update email,phone no. or password",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal, fontSize: 14)),
              trailing: const Icon(Icons.chevron_right),
              tileColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UpdateProfile(),
                  ),
                );
              },
            ),
            const Divider(
              height: 1.5,
            ),
            ListTile(
              leading: const CircleAvatar(
                radius: 16,
                backgroundColor: Colors.black12,
                child: Icon(
                  Icons.generating_tokens,
                  size: 20,
                  color: Colors.deepOrange,
                ),
              ),
              title: const Text("airVenture Tokens"),
              subtitle: Text("View our money transaction details and rules",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal, fontSize: 14)),
              trailing: const Icon(Icons.chevron_right),
              tileColor: Colors.white,
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => PrebookigTabBar(),
                //   ),
                // );
              },
            ),
            const Divider(
              height: 1.5,
            ),
            ListTile(
              leading: const CircleAvatar(
                radius: 16,
                backgroundColor: Colors.black12,
                child: Icon(
                  Icons.search,
                  size: 20,
                  color: Colors.deepOrange,
                ),
              ),
              title: const Text("Pre-Booking Queries"),
              subtitle: Text("Facing issues while booking? Not able to book?",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal, fontSize: 14)),
              trailing: const Icon(Icons.chevron_right),
              tileColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PrebookigTabBar(),
                  ),
                );
              },
            ),
            const Divider(
              height: 1.5,
            ),
            ListTile(
              leading: const CircleAvatar(
                radius: 16,
                backgroundColor: Colors.black12,
                child: Icon(
                  Icons.health_and_safety,
                  size: 20,
                  color: Colors.deepOrange,
                ),
              ),
              title: const Text("COVID-19"),
              subtitle: Text("Facing issues due to virus",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal, fontSize: 14)),
              trailing: const Icon(Icons.chevron_right),
              tileColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Covid(),
                  ),
                );
              },
            ),
            const Divider(
              height: 1.5,
            ),
            ListTile(
              leading: const CircleAvatar(
                radius: 16,
                backgroundColor: Colors.black12,
                child: Icon(
                  Icons.help,
                  size: 20,
                  color: Colors.deepOrange,
                ),
              ),
              title: const Text("airVenture assured"),
              subtitle: Text("Get free cancellation benefits",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal, fontSize: 14)),
              trailing: const Icon(Icons.chevron_right),
              tileColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Assurance(),
                  ),
                );
              },
            ),
            const Divider(
              height: 1.5,
            ),
            ListTile(
              leading: const CircleAvatar(
                radius: 16,
                backgroundColor: Colors.black12,
                child: Icon(
                  Icons.currency_exchange,
                  size: 20,
                  color: Colors.deepOrange,
                ),
              ),
              title: const Text("Manage Payment Methods"),
              subtitle: Text("Delete saved card or link/delink wallet",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal, fontSize: 14)),
              trailing: const Icon(Icons.chevron_right),
              tileColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddCard(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
