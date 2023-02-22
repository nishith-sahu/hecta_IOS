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

import 'package:list_tile_switch/list_tile_switch.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _SwitchButtonState createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: ListTileSwitch(
            contentPadding:
                EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            value: _value,
            switchActiveColor: Color.fromRGBO(9, 30, 37, 1),
            switchInactiveColor: Color.fromRGBO(160, 160, 160, 1),
            onChanged: (value) {
              setState(() {
                _value = value;
                FFAppState().hotProp = value;
              });
            }));
  }
}
