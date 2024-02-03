import 'package:flutter/material.dart';

import '../../data/firebase_service.dart';

class UserList extends StatefulWidget {
  const UserList({Key? key});

  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  final FirebaseService firebaseService = FirebaseService();

  late Future<List<Map<String, dynamic>>> userData;

  @override
  void initState() {
    super.initState();
    userData = firebaseService.fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Map<String, dynamic>>>(
      future: userData,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator(); // Loading indicator while fetching data
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          List<Map<String, dynamic>> users = snapshot.data!;

          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(users[index]['FullName']),
                subtitle: Text(users[index]['Email']),
                // Add more fields as needed
              );
            },
          );
        }
      },
    );
  }
}
