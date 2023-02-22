// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future newUserMailtoCare(
  String? email,
) async {
  // Add your function code here!
  //  var collectionRef = FirebaseFirestore.instance.collection('ff_push_notifications');
  List<String> ids = ['care@hecta.co'];

  String html5 =
      "<!DOCTYPE html><html lang=\"en\"><head><meta charset=\"UTF-8\"><meta http-equiv=\"X-UA-Compatible\"content=\"IE=edge\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"><title>Mail</title></head><body><p>Email ID: " +
          email! +
          "</p></body></html>";

  var x = {
    "subject": "A New User just registered! (from App)",
    "text": "",
    "html": html5
  };

  FirebaseFirestore.instance.collection("mail").add({"to": ids, "message": x});
}
