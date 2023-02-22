// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future removeFilterItems(String filterItem, List<String> typesList) async {
  // Add your function code here!
  List<String> budget = [
    "0",
    "50L",
    "2Cr",
    "5Cr",
    "25Cr",
    "50Cr",
    "100Cr",
    "500Cr",
    "1000Cr",
    "1000Cr+"
  ];
  bool isBudget() {
    for (int i = 0; i < budget.length; i++) {
      if (filterItem.contains(budget[i])) {
        return true;
      }
    }
    return false;
  }

  ;

  if (isBudget()) {
    FFAppState().filterMaxBudget = "1000Cr+";
    FFAppState().filterMinBudget = "0";
    // FFAppState().resFilList.remove(filterItem);
    FFAppState().resFilList.add("0 - 1000Cr+");
  } else if (typesList.contains(filterItem)) {
    FFAppState().filterType.remove(filterItem);
    // FFAppState().resFilList.remove(filterItem);
  } else {
    FFAppState().filterArea.remove(filterItem);
    // FFAppState().resFilList.remove(filterItem);
  }
}
