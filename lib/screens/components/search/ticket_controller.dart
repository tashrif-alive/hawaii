import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'moved_ticket_model.dart';

class TicketController extends GetxController {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  RxList<MovedTicketModel> movedTickets = <MovedTicketModel>[].obs;

  Future<void> moveTicketToNewDatabase(String userEmail, MovedTicketModel ticket) async {
    CollectionReference newDatabase = _firestore.collection('Moved Ticket');
    await newDatabase.add(ticket.toMap());
  }

  Future<void> fetchMovedTickets(String userEmail) async {
    QuerySnapshot snapshot = await _firestore
        .collection('Moved Ticket')
        .where('userEmail', isEqualTo: userEmail)
        .get();

    movedTickets.assignAll(snapshot.docs.map((doc) {
      return MovedTicketModel.fromSnapshot(doc.data() as Map<String, dynamic>);
    }));
  }
}
