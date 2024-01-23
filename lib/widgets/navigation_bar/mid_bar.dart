import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hawaii/widgets/navigation_bar/widgets_materials/mid_bar_widget.dart';


class MidBar extends StatelessWidget {
  const MidBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 74,
      child: Container(
        color: Colors.white70,
        padding: EdgeInsets.all(2),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MidBarWidget(
                iconData: Icons.flight,
                text: "Flight Status", onTap: () {  },

                // onTap: () => Get.to(() => FlightStatus()),
              ),
              VerticalDivider(thickness: 1),
              MidBarWidget(
                iconData: Icons.time_to_leave,
                text: "Airport Cab", onTap: () {  },
                // onTap: () => Get.to(() => AirportListPage()),
              ),
              VerticalDivider(thickness: 1),
              MidBarWidget(
                iconData: FontAwesomeIcons.book,
                text: "Packages", onTap: () {  },
                // onTap: ()  => Get.to(() => const Package()),
              ),
              VerticalDivider(thickness: 1),
              MidBarWidget(
                iconData: Icons.bar_chart,
                text: "Fare Alerts",
                onTap: ()  {},
              ),
              VerticalDivider(thickness: 1),
              MidBarWidget(
                iconData: FontAwesomeIcons.accusoft,
                text: "Apply for visa",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
