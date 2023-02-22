// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<bool> prefGiven(DocumentReference? ref) async {
  // Add your function code here!
  try {
    bool x = false;
    dynamic doc = await ref!.get().then((value) {
      x = value.get('pref_given');
    });
    return x;
  } catch (e) {
    return false;
  }
}
