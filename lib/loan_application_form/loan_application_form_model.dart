import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/app_bar_updated2_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoanApplicationFormModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for AppBar_updated2 component.
  late AppBarUpdated2Model appBarUpdated2Model;
  // State field(s) for name widget.
  TextEditingController? nameController1;
  String? Function(BuildContext, String?)? nameController1Validator;
  // State field(s) for name widget.
  TextEditingController? nameController2;
  String? Function(BuildContext, String?)? nameController2Validator;
  // State field(s) for name widget.
  TextEditingController? nameController3;
  String? Function(BuildContext, String?)? nameController3Validator;
  // State field(s) for name widget.
  TextEditingController? nameController4;
  String? Function(BuildContext, String?)? nameController4Validator;
  String? _nameController4Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for phone widget.
  TextEditingController? phoneController;
  String? Function(BuildContext, String?)? phoneControllerValidator;
  String? _phoneControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^[0-9]{10}\$').hasMatch(val)) {
      return 'Invalid text';
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
      return 'Enter a valid email address';
    }
    return null;
  }

  // State field(s) for bank widget.
  TextEditingController? bankController;
  String? Function(BuildContext, String?)? bankControllerValidator;
  String? _bankControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for msg widget.
  TextEditingController? msgController;
  String? Function(BuildContext, String?)? msgControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    appBarUpdated2Model = createModel(context, () => AppBarUpdated2Model());
    nameController4Validator = _nameController4Validator;
    phoneControllerValidator = _phoneControllerValidator;
    emailControllerValidator = _emailControllerValidator;
    bankControllerValidator = _bankControllerValidator;
  }

  void dispose() {
    appBarUpdated2Model.dispose();
    nameController1?.dispose();
    nameController2?.dispose();
    nameController3?.dispose();
    nameController4?.dispose();
    phoneController?.dispose();
    emailController?.dispose();
    bankController?.dispose();
    msgController?.dispose();
  }

  /// Additional helper methods are added here.

}
