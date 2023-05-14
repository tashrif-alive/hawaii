import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import '../../constaints/styles_colors.dart';

class SearchBoxs extends StatefulWidget {
  const SearchBoxs({Key? key}) : super(key: key);

  @override
  _SearchBoxsState createState() => _SearchBoxsState();
}

class _SearchBoxsState extends State<SearchBoxs> {
  bool isClicked = false;

  void onTap() {
    setState(() {
      isClicked = !isClicked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: ElevatedButton(
                  onPressed: onTap,
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        isClicked ? Colors.white70 : Colors.black12,
                    shape: const StadiumBorder(),
                  ),
                  child: Text(
                    'One Way',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: isClicked ? Colors.black : Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10.0),
              ElevatedButton(
                onPressed: onTap,
                style: ElevatedButton.styleFrom(
                  backgroundColor: isClicked ? Colors.black12 : Colors.white70,
                  shape: const StadiumBorder(),
                ),
                child: Text(
                  'Round Trip',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: isClicked ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 3,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black12,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
            child: Row(
              children: [
                const Icon(FluentSystemIcons.ic_fluent_my_location_regular,
                    color: Colors.white70),
                Text(
                  " From",
                  style: Styles.headLineStyle6,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black12,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
            child: Row(
              children: [
                const Icon(FluentSystemIcons.ic_fluent_globe_location_regular,
                    color: Colors.white70),
                Text(
                  " To",
                  style: Styles.headLineStyle6,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black12,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
            child: Row(
              children: [
                const Icon(FluentSystemIcons.ic_fluent_calendar_filled,
                    color: Colors.white70),
                Text(
                  " Date",
                  style: Styles.headLineStyle6,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black12,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
            child: Row(
              children: [
                const Icon(Icons.supervisor_account_sharp,
                    color: Colors.white70),
                Text("  Traveller", style: Styles.headLineStyle6)
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Search'),
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.orange.shade900, // Change the button color here
              ),
            ),
          ),
        ],
      ),
    );
  }
}
