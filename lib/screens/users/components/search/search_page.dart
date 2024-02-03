import 'package:flutter/material.dart';
import 'package:hawaii/screens/users/components/search/search_results_page.dart';
class SearchPage extends StatelessWidget {
  final TextEditingController _passportController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Passport'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _passportController,
              decoration: InputDecoration(
                labelText: 'Enter Passport Number',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchResultsPage(
                      passportNumber: _passportController.text,
                    ),
                  ),
                );
              },
              child: Text('Search'),
            ),
          ],
        ),
      ),
    );
  }
}
