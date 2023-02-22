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

class StrikethroughText extends StatefulWidget {
  const StrikethroughText({Key? key, this.width, this.height, this.value})
      : super(key: key);

  final double? width;
  final double? height;
  final String? value;

  @override
  _StrikethroughTextState createState() => _StrikethroughTextState();
}

Color hextoColor(String code) {
  return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}

class _StrikethroughTextState extends State<StrikethroughText> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
      widget.value!,
      style: TextStyle(
          fontFamily: "Roboto",
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: hextoColor("#8E8E8E"),
          decoration: TextDecoration.lineThrough,
          decorationColor: hextoColor("#F44336")),
    ));
  }
}
