import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: TextFormField(
          decoration: InputDecoration(
            hintText: 'Search',
            border: InputBorder.none,
          ),
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.mic,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        child: Center(
          child: Text('Search Results'),
        ),
      ),
    );
  }
}
