import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

import '../Model/projects.dart';

class ProjectsProvider with ChangeNotifier {
  List<Project> data = [];
  getProjects() async {
    Stream<QuerySnapshot> query =
        FirebaseFirestore.instance.collection('projects').snapshots();
    query.listen(
      (event) {
        //data = event.docs.toList();
        List temp = event.docs.toList();
        data = [];
        for (int i = 0; i < temp.length; i++) {
          data.add(
            Project(
              name: temp[i]['name'],
              image: temp[i]['image'],
              url: temp[i]['url'],
              description: temp[i]['description'],
            ),
          );
        }
        notifyListeners();
      },
    );
  }
}
