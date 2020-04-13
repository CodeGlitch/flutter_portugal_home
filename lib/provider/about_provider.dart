import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class AboutProvider with ChangeNotifier {
  List data = [];
  getOrganizer() async {
    Stream<QuerySnapshot> query =
        Firestore.instance.collection('organizers').snapshots();
    query.listen(
      (event) {
        data = event.documents.toList();
        notifyListeners();
      },
    );
  }
}
