import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

import '../Model/about.dart';

class AboutProvider with ChangeNotifier {
  List<About> data = [];
  getOrganizer() async {
    Stream<QuerySnapshot> query =
        FirebaseFirestore.instance.collection('organizers').snapshots();
    query.listen(
      (event) {
        //data = event.docs.toList();
        List temp = event.docs.toList();
        data = [];
        for (int i = 0; i < temp.length; i++) {
          data.add(
            About(
              name: temp[i]['name'],
              description: temp[i]['description'],
              image: temp[i]['image'],
              twitter: temp[i]['twitter'],
              github: temp[i]['github'],
              linkedin: temp[i]['linkedin'],
            ),
          );
        }
        notifyListeners();
      },
    );
  }
}
