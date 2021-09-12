import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import '../Model/jobs.dart';

class JobsProvider with ChangeNotifier {
  List<Job> data = [];
  getJobs() async {
    Stream<QuerySnapshot> query =
    FirebaseFirestore.instance.collection('jobs').snapshots();
    query.listen(
      (event) {
        //data = jobFromJson(event.docs.toList());
        data = jobFromJson(event.docs.asMap().forEach((k, v) => data.add(Job(k, v))));
        notifyListeners();
      },
    );
  }
}
