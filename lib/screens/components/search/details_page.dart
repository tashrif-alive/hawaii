import 'package:flutter/material.dart';
import 'package:hawaii/screens/components/search/purchase_confirmation_page.dart';

class DetailsPage extends StatelessWidget {
  final Map<String, dynamic> data;

  DetailsPage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Passport Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${data['name']}'),
            Text('Passport: ${data['passport']}'),
            Text('Nationality: ${data['nationality']}'),
            Text('Fathers Name: ${data['fname']}'),
            Text('Mothers Name: ${data['mname']}'),
            Text('Phone Number: ${data['phone']}'),
            Text('Gender: ${data['sex']}'),
            Text('Date of Birth: ${data['dob']}'),
            Text('BirthPlace: ${data['birthplace']}'),
            Text('Address: ${data['address']}'),
            // Display other fields from the document here

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PurchaseConfirmationPage(data: data),
                  ),
                );
              },
              child: Text('Purchase Ticket'),
            ),
          ],
        ),
      ),
    );
  }
}
