import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SigninScreenCopyModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Email_Field widget.
  TextEditingController? emailFieldController;
  String? Function(BuildContext, String?)? emailFieldControllerValidator;
  // State field(s) for Password_Field widget.
  TextEditingController? passwordFieldController;
  late bool passwordFieldVisibility;
  String? Function(BuildContext, String?)? passwordFieldControllerValidator;
  // Stores action output result for [Custom Action - loginAttempts] action in Button widget.
  int? attempt1;
  // Stores action output result for [Custom Action - prefGiven] action in Button widget.
  bool? available1;
  // Stores action output result for [Custom Action - getPrefRef] action in Button widget.
  DocumentReference? prefreference;
  // Stores action output result for [Custom Action - fetchPrefLoc] action in Button widget.
  List<String>? prefCity;
  // Stores action output result for [Custom Action - loginAttempts] action in Row widget.
  int? attempt2;
  // Stores action output result for [Custom Action - prefGiven] action in Row widget.
  bool? available2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordFieldVisibility = false;
  }

  void dispose() {
    emailFieldController?.dispose();
    passwordFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}
