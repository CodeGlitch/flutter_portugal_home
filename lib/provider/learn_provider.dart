import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class LearnProvider with ChangeNotifier {
  List data = [];
  getLearn() async {
    Stream<QuerySnapshot> query =
    FirebaseFirestore.instance.collection('learn').snapshots();
    query.listen(
      (event) {
        data = event.docs.toList();
        notifyListeners();
      },
    );
  }
}
