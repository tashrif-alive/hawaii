import 'package:flutter/material.dart';

class AdminuserComponent extends StatefulWidget {
  const AdminuserComponent({Key? key});

  @override
  State<AdminuserComponent> createState() => _AdminuserComponentState();
}

class _AdminuserComponentState extends State<AdminuserComponent> {
  @override
  Widget build(BuildContext context) {
    // Assuming you have a List of data
    List<String> cardData = ['Card 0', 'Card 1', 'Card 2', 'Card 3'];

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,

      ),
      itemCount: cardData.length,
      itemBuilder: (context, index) {
        return Container(
          child: Card(
            color: Colors.purple[50],
            elevation: 3.0,
            child: Center(
              child: Text(
                cardData[index],
                style: const TextStyle(fontSize: 18.0),
              ),
            ),
          ),
        );
      },
    );
  }
}
