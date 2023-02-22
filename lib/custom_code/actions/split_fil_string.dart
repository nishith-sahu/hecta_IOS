// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// import '../../backend/backend.dart';
// import '../../flutter_flow/flutter_flow_theme.dart';
// import '../../flutter_flow/flutter_flow_util.dart';
// import 'index.dart'; // Imports other custom widgets
// import '../actions/index.dart'; // Imports custom actions
// import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
// import 'package:flutter/material.dart';

// THE ABOVE IMPORTS WILL BE ADDED AUTOMATICALLY. DO NOT INCLUDE THESE IN CODE EDITOR.

Future splitFilString(List<String> str) async {
  // Add your function code here!
  List<String> state = [];
  List<String> city = [];
  List<String> area = [];

  for (int i = 0; i < str.length; i++) {
    String str1 = str[i];
    List<String> lst = str1.split(", ");

    if (lst.length <= 1) {
      state = state + lst;
      city = city + lst;
    } else {
      area = area + lst.sublist(0, lst.length - 1);
      city = area;
    }
  }
  FFAppState().filterArea = area;
  FFAppState().filterCity = city;
  FFAppState().filterState = state;
  //ans!.city=city.toBuiltList();
  //ans!.state=state.toBuiltList();
}
