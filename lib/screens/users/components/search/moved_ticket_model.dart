class MovedTicketModel {
  final String userEmail;
  final String airline;
  final String fromDestination;
  final String toDestination;
  final double price;
  final DateTime date;
  final String flightClass;
  final String duration;
  final String fno;
  final String arrival;
  final String departure;

  MovedTicketModel({
    required this.userEmail,
    required this.airline,
    required this.fromDestination,
    required this.toDestination,
    required this.price,
    required this.date,
    required this.flightClass,
    required this.duration,
    required this.fno,
    required this.arrival,
    required this.departure,

  });

  // Convert the model to a map for Firestore

  Map<String, dynamic> toMap() {
    return {
      'userEmail': userEmail,
      'airline': airline,
      'fromDestination': fromDestination,
      'toDestination': toDestination,
      'price': price,
      'date': date,
      'flightClass': flightClass,
      'duration': duration,
      'fno': fno,
      'arrival': arrival,
      'departure': departure,
    };
  }

  // Create a model from a Firestore document snapshot
  factory MovedTicketModel.fromSnapshot(Map<String, dynamic> snapshot) {
    return MovedTicketModel(
      userEmail: snapshot['userEmail'],
      airline: snapshot['airline'],
      fromDestination: snapshot['fromDestination'],
      toDestination: snapshot['toDestination'],
      price: snapshot['price'],
      date: snapshot['date'].toDate(),
      flightClass: snapshot['flightClass'],
      duration: snapshot['duration'],
      fno: snapshot['fno'],
      departure: snapshot['departure'],
      arrival: snapshot['arrival'],
    );
  }
}
