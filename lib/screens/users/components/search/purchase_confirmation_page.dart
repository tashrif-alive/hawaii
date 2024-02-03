import 'package:flutter/material.dart';

class PurchaseConfirmationPage extends StatelessWidget {
  final Map<String, dynamic> data;

  PurchaseConfirmationPage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Purchase Confirmation'),
      ),
      body: Center(
        // Display purchase confirmation details
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Purchase Successful!'),
            ElevatedButton(
              onPressed: () {
                // Navigate back to search page
                Navigator.pop(context);
              },
              child: Text('Back to Search'),
            ),
          ],
        ),
      ),
    );
  }
}
