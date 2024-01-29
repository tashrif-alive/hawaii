import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/search_model.dart';

class SearchBoxController extends GetxController {
  final RxString fromDestination = ''.obs;
  final RxString toDestination = ''.obs;
  final RxList<FlightSearchModel> searchResults = RxList<FlightSearchModel>([]);

  void setFromDestination(String value) {
    fromDestination.value = value;
  }

  void setToDestination(String value) {
    toDestination.value = value;
  }

  Future<void> onSearchPressed() async {
    String from = fromDestination.value;
    String to = toDestination.value;

    try {
      final querySnapshot = await FirebaseFirestore.instance
          .collection('Destination')
          .where('From', isEqualTo: from)
          .where('To', isEqualTo: to)
          .get();

      print('Query executed successfully!');
      print('Number of results: ${querySnapshot.docs.length}');

      final List<FlightSearchModel> flightResults = querySnapshot.docs
          .map((doc) => FlightSearchModel.fromSnapshot(doc))
          .toList();

      searchResults.assignAll(flightResults); // Store the search results in the controller

      // Process the query results
      // ...

    } catch (e) {
      print('Error while searching flights: $e');
      // Handle the error if needed
    }
  }
}
