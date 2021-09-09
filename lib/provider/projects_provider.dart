import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class ProjectsProvider with ChangeNotifier {
  List data = [];
  getProjects() async {
    Stream<QuerySnapshot> query =
    FirebaseFirestore.instance.collection('projects').snapshots();
    query.listen(
      (event) {
        data = event.docs.toList();
        notifyListeners();
      },
    );
  }
}
