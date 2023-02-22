// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<String>> search(String keyword) async {
  // Add your function code here!
  List<String> list = [];
/*   Stream<QuerySnapshot> productRef =
    FirebaseFirestore.instance.collection("property").snapshots();
   productRef.forEach((field) {
    field.docs.asMap().forEach((index, data) {
      String x = field.docs[index]["city"];
      if (x.contains(keyword)) 
      {
         list.add(field.docs[index]["city"]);
      }
    });
  }); */

  var collectionRef = FirebaseFirestore.instance.collection('Properties');
  //DocumentReference docId;
  dynamic doc = await collectionRef
      .where("city", isGreaterThanOrEqualTo: keyword)
      .where('city', isLessThan: keyword + 'z')
      .get()
      .then((value) {
    value.docs.forEach((element) {
      list.add(element.data()["city"]);
    });
  });
  dynamic doc1 = await collectionRef
      .where("area", isGreaterThanOrEqualTo: keyword)
      .where('area', isLessThan: keyword + 'z')
      .get()
      .then((value) {
    value.docs.forEach((element) {
      list.add(element.data()["area"]);
    });
  });
  return list.toSet().toList();
}
