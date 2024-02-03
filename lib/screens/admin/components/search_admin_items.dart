import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchAdminBarWidget extends StatefulWidget {
  @override
  _SearchAdminBarWidgetState createState() => _SearchAdminBarWidgetState();
}

class _SearchAdminBarWidgetState extends State<SearchAdminBarWidget> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      decoration: BoxDecoration(
        color: Colors.blueGrey[50], // Set the background color to dark
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                filled: false, // Set to true for a filled background
                fillColor: Colors.blueGrey[800], // Set the filled color to dark
                hintStyle: TextStyle(color: Colors.blueGrey[500]),
                hintText: "Search User",
                prefixIcon: Icon(Icons.search, color: Colors.grey[500]),
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
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.4),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
              ),
              onPressed: () {
                print('Search query: ${_searchController.text}');
              },
              child: Text(
                'Search',
                style: GoogleFonts.roboto(fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
