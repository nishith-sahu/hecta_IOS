// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<String>> fetchNotification(DateTime to) async {
  // Add your function code here!
  // NotificationStruct not;
  List<String> list = [];
  var collectionRef =
      FirebaseFirestore.instance.collection('ff_push_notifications');
  //DocumentReference docId;
  dynamic doc = await collectionRef.get().then((value) {
    value.docs.forEach((element) {
      DateTime from = element.data()["timestamp"];
      from = DateTime(from.year, from.month, from.day);
      to = DateTime(to.year, to.month, to.day);
      int hours = (to.difference(from).inHours);
      String y = hours.toString() + " hours ago";
      // list.add(element.data()["city"]);
      String x = element.data()["notification_text"] +
          "-" +
          element.data()["notification_title"] +
          "-" +
          y;
      list.add(x);
    });
  });
  return list;
}
