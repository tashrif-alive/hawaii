import 'package:cloud_firestore/cloud_firestore.dart';

class FlightSearchModel {
  String? id;
  String? duration;
  String? airline;
  double? price;
  String? fno;
  String? arrival;
  String? departure;
  final String fromDestination;
  final String toDestination;
  final String flightClass;
  final DateTime date;

  FlightSearchModel({
    this.id,
    required this.fromDestination,
    required this.toDestination,
    required this.date,
    required this.flightClass,
    this.duration,
    this.arrival,
    this.departure,
    this.fno,
    this.price,
    this.airline,
  });

  // Factory method to create a FlightSearchModel from a Firestore DocumentSnapshot

  factory FlightSearchModel.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    return FlightSearchModel(
      id: snapshot.id,
      fromDestination: data['From'],
      toDestination: data['To'],
      flightClass: data['Class'],
      duration: data['Duration'],
      fno: data['fno'],
      arrival: data['arrival'],
      departure: data['departure'],
      price: data['Price']?.toDouble(),
      airline: data['Airline'],
      date: (data['Date'] as Timestamp).toDate(),
    );
  }

  // Convert FlightSearchModel to JSON format

  Map<String, dynamic> toJson() {
    return {
      "From": fromDestination,
      "To": toDestination,
      "Class": flightClass,
      "Duration": duration,
      "Price": price,
      "Airline": airline,
      "Date": date,
    };
  }
}
