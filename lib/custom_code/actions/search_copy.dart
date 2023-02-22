// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<int> searchCopy(
  List<String>? cities,
  List<String>? types,
) async {
  // Add your function code here!
  List<int> list = [];
  List<String> list1 = [];

  List<String> list2 = [];
  int count = 0;

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

  var collectionRef = FirebaseFirestore.instance.collection('property');
  //DocumentReference docId;
  for (int i = 0; i < cities!.length; i++) {
    for (int j = 0; j < types!.length; j++) {
      dynamic doc = await collectionRef
          .where("city", isEqualTo: cities[i])
          .where('product_categories', isEqualTo: types[j])
          .get()
          .then((value) {
        value.docs.forEach((element) {
          count++;
          //  list.add(element.data()["property_id"]);
        });
      });
      if (count == 1) {
        return count;
      }
    }
  }

  return count;
}

/*  var doc = await prefRef.get().then((value) {
    list1 = value.get('property_type');
    list2=  value.get('cities');
  });
  
    Stream<QuerySnapshot> productRef =
    FirebaseFirestore.instance.collection("property").snapshots();
   productRef.forEach((field) {
    field.docs.asMap().forEach((index, data) {
      if (list1.contains(field.docs[index]["product_categories"])) 
      {
        if(list2.contains(field.docs[index]["city"]))
        {
        list3.add(field.docs[index]["property_id"]);
        }
      }
    });
  });
  
  return list3; */
