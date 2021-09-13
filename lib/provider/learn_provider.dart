import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

import '../Model/learn.dart';

class LearnProvider with ChangeNotifier {
  List<Learn> data = [];
  getLearn() async {
    Stream<QuerySnapshot> query =
        FirebaseFirestore.instance.collection('learn').snapshots();
    query.listen(
      (event) {
        //data = event.docs.toList();
        List temp = event.docs.toList();
        data = [];
        for (int i = 0; i < temp.length; i++) {
          data.add(
            Learn(
              name: temp[i]['name'],
              image: temp[i]['image'],
              url: temp[i]['url'],
            ),
          );
        }
        notifyListeners();
      },
    );
  }
}
