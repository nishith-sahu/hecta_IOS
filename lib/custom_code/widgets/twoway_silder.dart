// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '../actions/index.dart'; // Imports custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:syncfusion_flutter_sliders/sliders.dart';

String min = "", max = "";

class TwowaySilder extends StatefulWidget {
  const TwowaySilder({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _TwowaySilderState createState() => _TwowaySilderState();
}

Map<int, String> budgetMap = {
  0: "0",
  1: "50L",
  2: "2Cr",
  3: "5Cr",
  4: "25Cr",
  5: "50Cr",
  6: "100Cr",
  7: "200Cr",
  8: "500Cr",
  9: "1000Cr",
  10: "1000Cr+"
};

Map<String, String> budgetMap1 = {
  "0": "",
  "50L": "Lakhs",
  "2Cr": "Crores",
  "5Cr": "Crores",
  "25Cr": "Crores",
  "50Cr": "Crores",
  "100Cr": "Crores",
  "200Cr": "Crores",
  "500Cr": "Crores",
  "1000Cr": "Crores",
  "1000Cr+": "Crores",
};
Map<String, String> budgetMap2 = {
  "0": "0",
  "50L": "50",
  "2Cr": "2",
  "5Cr": "5",
  "25Cr": "25",
  "50Cr": "50",
  "100Cr": "100",
  "200Cr": "200",
  "500Cr": "500",
  "1000Cr": "1000",
  "1000Cr+": "1000+",
};

Map<String, int> budgetMap3 = {
  "0": 0,
  "50L": 20,
  "2Cr": 40,
  "5Cr": 60,
  "25Cr": 80,
  "50Cr": 100,
  "100Cr": 120,
  "200Cr": 140,
  "500Cr": 160,
  "1000Cr": 180,
  "1000Cr+": 200,
};
Map<int, String> budgetMap4 = {
  0: "0",
  20: "50L",
  40: "2Cr",
  60: "5Cr",
  80: "25Cr",
  100: "50Cr",
  120: "100Cr",
  140: "200Cr",
  160: "500Cr",
  180: "1000Cr",
  200: "1000Cr+"
};

// String minBudget = "0";
// String maxBudget = "25Cr+";

RangeValues _currentRangeValues = RangeValues(
    budgetMap3[FFAppState().minBudgetNew]!.toDouble(),
    budgetMap3[FFAppState().maxBudgetNew]!.toDouble());

// RangeValues _currentRangeValues =
//     RangeValues(budgetMap3["0"]!.toDouble(), budgetMap3["1000Cr+"]!.toDouble());

// RangeValues _currentRangeValues =
//     RangeValues(budgetMap3["0"]!.toDouble(), budgetMap3["50L"]!.toDouble());

class _TwowaySilderState extends State<TwowaySilder> {
  @override
  Widget build(BuildContext context) {
    // RangeValues _currentRangeValues = RangeValues(
    //     budgetMap3[widget.minInput]!.toDouble(),
    //     budgetMap3[widget.maxInput]!.toDouble());
    // RangeValues(budgetMap3[widget.minBudget]!.toDouble(),budgetMap3[widget.maxBudget]!.toDouble());
    return Container(
        child: Column(children: [
      Row(
        //  crossAxisAlignment: CrossAxisAlignment.baseline,
        children: [
          Text("₹",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
          Text(budgetMap2[budgetMap4[_currentRangeValues.start.round()]!]!,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
          Text(
            budgetMap1[budgetMap4[_currentRangeValues.start.round()]!]!,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Text(
              " - ",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            ),
          ),
          Text(
            "₹",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          Text(
            budgetMap2[budgetMap4[_currentRangeValues.end.round()]!]!,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Text(
            budgetMap1[budgetMap4[_currentRangeValues.end.round()]!]!,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
          )
        ],
      ),
      SliderTheme(
          data: SliderThemeData(trackHeight: 1),
          child: RangeSlider(
            values: _currentRangeValues,
            max: 200,
            divisions: 10,
            activeColor: Color.fromRGBO(9, 30, 27, 1),
            inactiveColor: Color.fromRGBO(188, 188, 188, 1),
            onChanged: (RangeValues values) {
              if (values.start != values.end!) {
                setState(() {
                  _currentRangeValues = values;
                  FFAppState().maxBudgetNew =
                      budgetMap4[_currentRangeValues.end]!;
                  FFAppState().minBudgetNew =
                      budgetMap4[_currentRangeValues.start]!;
                });
              }
            },
          ))
    ]));
  }
}
