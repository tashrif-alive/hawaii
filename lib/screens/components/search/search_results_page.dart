import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'details_page.dart';

class SearchResultsPage extends StatelessWidget {
  final String passportNumber;

  SearchResultsPage({required this.passportNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Results'),
      ),
      body: FutureBuilder<QuerySnapshot>(
        future: FirebaseFirestore.instance
            .collection('PassportID')
            .where('passport', isEqualTo: passportNumber)
            .get(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData ||
              snapshot.data!.docs.isEmpty) {
            return Center(child: Text('No results found.'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                var data = snapshot.data!.docs[index].data() as Map<String, dynamic>?;

                if (data == null) {
                  return const ListTile(
                    title: Text('No data available'),
                  );
                }

                return ListTile(
                  title: Text(data['name'] ?? 'No name'),
                  subtitle: Text(data['nationality'] ?? 'No nationality'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsPage(data: data),
                      ),
                    );
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}
