import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controllers/search_box_controller.dart';
import '../../../../widgets/navigation_bar/flight_class.dart';
import 'flight_result.dart';

class SearchBoxs extends StatelessWidget {
  final SearchBoxController controller = Get.put(SearchBoxController());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown.shade50,
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          ListTile(
            title: SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              child: TextFormField(
                onChanged: (value) => controller.setFromDestination(value),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: Colors.black26,
                  filled: true,
                  prefixIcon: const Icon(
                    Icons.location_on,
                    color: Colors.white70,
                  ),
                  hintText: 'From',
                  hintStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                ),
              ),
            ),
          ),
          ListTile(
            title: SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              child: TextFormField(
                onChanged: (value) => controller.setToDestination(value),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: Colors.black26,
                  filled: true,
                  prefixIcon: const Icon(
                    Icons.flight_takeoff,
                    color: Colors.white70,
                  ),
                  hintText: 'To',
                  hintStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                ),
              ),
            ),
          ),
          ListTile(
            title: SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              child: InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black26,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,

                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.supervisor_account,
                        color: Colors.white70,
                      ),
                      SizedBox(width: 5,),
                      FlightClass()
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 44.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  colors: [Color(0xFFff9133), Color(0xFFe16c06)],
                ),
              ),
              child: ElevatedButton(
                onPressed: () async {
                  await controller.onSearchPressed();
                  if (controller.searchResults.isNotEmpty) {
                    Get.to(() =>
                        Flight_Result(searchResults: controller.searchResults));
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text('Search'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FlightResult {
}
