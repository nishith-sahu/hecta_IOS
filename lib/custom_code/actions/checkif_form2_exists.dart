// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<bool> checkifForm2Exists(
  String? userID,
  String? propID,
) async {
  try {
    // DocumentReference formid;
//    String str="sfsd";
    var ref = FirebaseFirestore.instance.collection('property_form2');
    var doc = await ref
        .where("prop_id", isEqualTo: propID)
        .where("user_id", isEqualTo: userID)
        .get();
    if (doc.docs.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  } catch (e) {
    return false;
  }
/*  Stream<QuerySnapshot> ref =
     FirebaseFirestore.instance.collection("property_form1").snapshots();
   ref.forEach((field) {
    field.docs.asMap().forEach((index, data) {
      if (field.docs[index]["draft"]) {
        formid = field.docs[index].reference;
      }
    });
  }); */
}

//    if (field.docs[index]["prop_ref"] == propRef &&
//       field.docs[index]["cust_ref"] == custRef)
