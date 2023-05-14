import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget{
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02),
      height: 80.0,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color:  const Color(0xf2b20945),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 5.0,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              'airVenture',
              style: TextStyle(
                color: Colors.white54,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(

            children: <Widget>[
              TextButton(
                style: ButtonStyle(overlayColor: MaterialStateProperty.all(Colors.transparent)),
                onPressed: () {},

                child: const Text(
                  'Flights',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.0,
                  ),
                ),

              ),
              Divider(height: 2,),

              TextButton(
                style: ButtonStyle(overlayColor: MaterialStateProperty.all(Colors.transparent)),
                onPressed: () {},
                child: const Text(
                  'Hotels',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.0,
                  ),
                ),
              ),
              TextButton(
                style: ButtonStyle(overlayColor: MaterialStateProperty.all(Colors.transparent)),
                onPressed: () {},

                child: const Text(
                  'Trains',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.0,
                  ),
                ),

              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              icon: const Icon(Icons.account_circle,
                size: 35,
                color: Colors.white54,
              ),
              splashRadius: 10,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity,450);
}
