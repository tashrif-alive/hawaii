import 'package:flutter/material.dart';

class FlightClass extends StatelessWidget {
  const FlightClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: DropdownButton<String>(
        value: 'Economy',
        onChanged: (String? newValue) {
          // Handle dropdown item selection
          // You can perform any action you want here
          if (newValue != null) {
            print("Selected: $newValue");
          }
        },
        items: <String>['Economy','Business']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
