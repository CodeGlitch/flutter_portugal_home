import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class JobsProvider with ChangeNotifier {
  List data = [];
  getJobs() async {
    Stream<QuerySnapshot> query =
    FirebaseFirestore.instance.collection('jobs').snapshots();
    query.listen(
      (event) {
        data = event.docs.toList();
        notifyListeners();
      },
    );
  }
}
