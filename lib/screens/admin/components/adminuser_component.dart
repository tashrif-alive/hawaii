import 'package:flutter/material.dart';

class GridBuilder extends StatefulWidget {
  const GridBuilder({super.key});

  @override
  State<GridBuilder> createState() => _GridBuilderState();
}
class _GridBuilderState extends State<GridBuilder> {
  @override

  // index=[Text("data")]
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns in the grid
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
      ),
      itemCount: 4, // Number of items/cards in the grid
      itemBuilder: (context, index) {
        return Card(
          color: Colors.black,
          elevation: 3.0,
          child: Center(
            child: Text(
              'Card $index',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
        );
      },
    );
  }
}
