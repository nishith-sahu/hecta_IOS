// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<String>> fetchPrefLoc(DocumentReference prefRef) async {
  List<String> list1 = [];
  try {
    dynamic doc = await prefRef.get().then((value) {
      list1 = value.get('cities');
    });
    return list1;
  } catch (e) {
    return [];
  }
}