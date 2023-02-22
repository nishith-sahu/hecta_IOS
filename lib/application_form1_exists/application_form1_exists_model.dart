import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ApplicationForm1ExistsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for first_name1 widget.
  TextEditingController? firstName1Controller;
  String? Function(BuildContext, String?)? firstName1ControllerValidator;
  String? _firstName1ControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^[A-Za-z]+\$').hasMatch(val)) {
      return 'Only Alphabets Allowed';
    }
    return null;
  }

  // State field(s) for middle_name1 widget.
  TextEditingController? middleName1Controller;
  String? Function(BuildContext, String?)? middleName1ControllerValidator;
  // State field(s) for last_name1 widget.
  TextEditingController? lastName1Controller;
  String? Function(BuildContext, String?)? lastName1ControllerValidator;
  String? _lastName1ControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^[A-Za-z]+\$').hasMatch(val)) {
      return 'Only Alphabets Allowed';
    }
    return null;
  }

  // State field(s) for father_spouse_name1 widget.
  TextEditingController? fatherSpouseName1Controller;
  String? Function(BuildContext, String?)? fatherSpouseName1ControllerValidator;
  String? _fatherSpouseName1ControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^[a-zA-Z\\s]*\$').hasMatch(val)) {
      return 'Invalid Name';
    }
    return null;
  }

  // State field(s) for dob1 widget.
  TextEditingController? dob1Controller;
  String? Function(BuildContext, String?)? dob1ControllerValidator;
  String? _dob1ControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(
            '^(0?[1-9]|[12][0-9]|3[01])[\\/\\-](0?[1-9]|1[012])[\\/\\-]\\d{4}\$')
        .hasMatch(val)) {
      return 'Invalid Date';
    }
    return null;
  }

  // State field(s) for mobile1 widget.
  TextEditingController? mobile1Controller;
  String? Function(BuildContext, String?)? mobile1ControllerValidator;
  String? _mobile1ControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^\\(?(\\d{3})\\)?[- ]?(\\d{3})[- ]?(\\d{4})\$')
        .hasMatch(val)) {
      return 'Invalid Phone Number';
    }
    return null;
  }

  // State field(s) for email1 widget.
  TextEditingController? email1Controller;
  String? Function(BuildContext, String?)? email1ControllerValidator;
  String? _email1ControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Invalid Email';
    }
    return null;
  }

  // State field(s) for status1 widget.
  String? status1Value;
  // State field(s) for perm_add_1_1 widget.
  TextEditingController? permAdd11Controller;
  String? Function(BuildContext, String?)? permAdd11ControllerValidator;
  String? _permAdd11ControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue;
  // State field(s) for curr_add_1_1 widget.
  TextEditingController? currAdd11Controller;
  String? Function(BuildContext, String?)? currAdd11ControllerValidator;
  String? _currAdd11ControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for domicile1 widget.
  String? domicile1Value;
  // Stores action output result for [Custom Action - checkifForm2Exists] action in Button widget.
  bool? form2exists;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    firstName1ControllerValidator = _firstName1ControllerValidator;
    lastName1ControllerValidator = _lastName1ControllerValidator;
    fatherSpouseName1ControllerValidator =
        _fatherSpouseName1ControllerValidator;
    dob1ControllerValidator = _dob1ControllerValidator;
    mobile1ControllerValidator = _mobile1ControllerValidator;
    email1ControllerValidator = _email1ControllerValidator;
    permAdd11ControllerValidator = _permAdd11ControllerValidator;
    currAdd11ControllerValidator = _currAdd11ControllerValidator;
  }

  void dispose() {
    firstName1Controller?.dispose();
    middleName1Controller?.dispose();
    lastName1Controller?.dispose();
    fatherSpouseName1Controller?.dispose();
    dob1Controller?.dispose();
    mobile1Controller?.dispose();
    email1Controller?.dispose();
    permAdd11Controller?.dispose();
    currAdd11Controller?.dispose();
  }

  /// Additional helper methods are added here.

}
