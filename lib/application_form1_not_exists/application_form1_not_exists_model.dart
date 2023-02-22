import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ApplicationForm1NotExistsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for first_name widget.
  TextEditingController? firstNameController;
  String? Function(BuildContext, String?)? firstNameControllerValidator;
  String? _firstNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^[A-Za-z]+\$').hasMatch(val)) {
      return 'Only Alphabets Allowed';
    }
    return null;
  }

  // State field(s) for middle_name widget.
  TextEditingController? middleNameController;
  String? Function(BuildContext, String?)? middleNameControllerValidator;
  // State field(s) for last_name widget.
  TextEditingController? lastNameController;
  String? Function(BuildContext, String?)? lastNameControllerValidator;
  String? _lastNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^[A-Za-z]+\$').hasMatch(val)) {
      return 'Only Alphabets Allowed';
    }
    return null;
  }

  // State field(s) for father_spouse_name widget.
  TextEditingController? fatherSpouseNameController;
  String? Function(BuildContext, String?)? fatherSpouseNameControllerValidator;
  String? _fatherSpouseNameControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^[a-zA-z\\s]*\$').hasMatch(val)) {
      return 'Invalid Name';
    }
    return null;
  }

  // State field(s) for dob widget.
  TextEditingController? dobController;
  String? Function(BuildContext, String?)? dobControllerValidator;
  String? _dobControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(
            '^(0?[1-9]|[12][0-9]|3[01])[\\/\\-](0?[1-9]|1[012])[\\/\\-]\\d{4}\$')
        .hasMatch(val)) {
      return 'Invalid Date Format';
    }
    return null;
  }

  // State field(s) for mobile widget.
  TextEditingController? mobileController;
  String? Function(BuildContext, String?)? mobileControllerValidator;
  String? _mobileControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^\\(?(\\d{3})\\)?[- ]?(\\d{3})[- ]?(\\d{4})\$')
        .hasMatch(val)) {
      return 'Invalid Phone Number';
    }
    return null;
  }

  // State field(s) for email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  String? _emailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Invalid Email';
    }
    return null;
  }

  // State field(s) for status widget.
  String? statusValue;
  // State field(s) for perm_add_1 widget.
  TextEditingController? permAdd1Controller;
  String? Function(BuildContext, String?)? permAdd1ControllerValidator;
  String? _permAdd1ControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue;
  // State field(s) for curr_add_1 widget.
  TextEditingController? currAdd1Controller;
  String? Function(BuildContext, String?)? currAdd1ControllerValidator;
  String? _currAdd1ControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for domicile widget.
  String? domicileValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    firstNameControllerValidator = _firstNameControllerValidator;
    lastNameControllerValidator = _lastNameControllerValidator;
    fatherSpouseNameControllerValidator = _fatherSpouseNameControllerValidator;
    dobControllerValidator = _dobControllerValidator;
    mobileControllerValidator = _mobileControllerValidator;
    emailControllerValidator = _emailControllerValidator;
    permAdd1ControllerValidator = _permAdd1ControllerValidator;
    currAdd1ControllerValidator = _currAdd1ControllerValidator;
  }

  void dispose() {
    firstNameController?.dispose();
    middleNameController?.dispose();
    lastNameController?.dispose();
    fatherSpouseNameController?.dispose();
    dobController?.dispose();
    mobileController?.dispose();
    emailController?.dispose();
    permAdd1Controller?.dispose();
    currAdd1Controller?.dispose();
  }

  /// Additional helper methods are added here.

}
