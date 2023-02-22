// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

String fetchNotifications() {
  // Add your function code here!
  // NotificationStruct not;
  // List<String> notifications = [];
  String notifications = 'Hello';
  return notifications;
  var collectionRef =
      FirebaseFirestore.instance.collection('ff_push_notifications');
  //DocumentReference docId;
  dynamic doc = collectionRef.get().then((value) {
    value.docs.forEach((element) {
      // DateTime from = element.data()["timestamp"];
      //from = DateTime(from.year, from.month, from.day);
      // list.add(element.data()["city"]);
      notifications += element.data()["notification_title"] + ",";
      // notifications.add(notification);
    });
  });
}
