import 'package:flutter/material.dart';

import '../../utils/app_text.dart';

class SearchBarWidget extends StatefulWidget {
  @override
  _SearchBarWidgetState createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * 0.05,
       width: MediaQuery.of(context).size.width * 0.5,
      decoration: BoxDecoration(
        color: Colors.white38, // Background color
        borderRadius: BorderRadius.circular(45.0), // Border radius
         // Border color (optional)
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                // fillColor: Color.fromRGBO(0, 0, 0, 5),
                // hintText: 'Where are you going?',
                hintStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.search,color: Colors.white,),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 8.0),
              ),
              onChanged: (value) {
                print('Search query: $value');
              },
            ),
          ),
          Container(
            decoration:  BoxDecoration(
              color: Colors.black.withOpacity(0.4), // Background color
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(45),
                topRight: Radius.circular(45),
              ), // Border radius
            ),

            child: TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white, // Text color
              ),
              onPressed: () {
                print('Search query: ${_searchController.text}');
              },
              child: Text(
                'Search',style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
