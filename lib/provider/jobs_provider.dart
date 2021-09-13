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
        //data = event.docs.toList();
        List temp = event.docs.toList();
        data = [];
        for (int i = 0; i < temp.length; i++) {
          data.add(
            Job(
              name: temp[i]['name'],
              description: temp[i]['description'],
              image: temp[i]['image'],
              htmlBody: temp[i]['html_body'],
              lastUpdate: temp[i]['last_update'],
              url: temp[i]['url'],
            ),
          );
        }
        notifyListeners();
      },
    );
  }
}
