//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import '../Model/projects.dart';

class ProjectsProvider with ChangeNotifier {
  List<Project> data = [];
  getProjects() async {
    /*Stream<QuerySnapshot> query =
    FirebaseFirestore.instance.collection('projects').snapshots();
    query.listen(
      (event) {
        data = event.docs.toList();
        notifyListeners();
      },
    );*/
  }
}
