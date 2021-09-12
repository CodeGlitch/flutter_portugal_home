//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import '../Model/about.dart';

class AboutProvider with ChangeNotifier {
  List<About> data = [];
  getOrganizer() async {
    /*Stream<QuerySnapshot> query =
    FirebaseFirestore.instance.collection('organizers').snapshots();
    query.listen(
      (event) {
        data = event.docs.toList();
        notifyListeners();
      },
    );*/
  }
}
