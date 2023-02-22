import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../backend/backend.dart';
import '../components/app_bar_updated2_widget.dart';
import '../components/bottom_nav_grey_widget.dart';
import '../components/otp_bottom_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../custom_code/actions/index.dart' as actions;
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyAccountsPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for AppBar_updated2 component.
  late AppBarUpdated2Model appBarUpdated2Model;
  // State field(s) for name widget.
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // Stores action output result for [Custom Action - generateotp] action in Text widget.
  int? otp1;
  // Stores action output result for [Backend Call - API (msgetotp)] action in Text widget.
  ApiCallResponse? otpResult1;
  // Stores action output result for [Custom Action - generateotp] action in Text widget.
  int? otp;
  // Stores action output result for [Backend Call - API (msgetotp)] action in Text widget.
  ApiCallResponse? otpResult;
  // State field(s) for phone_Text widget.
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  // State field(s) for pincode widget.
  TextEditingController? pincodeController;
  String? Function(BuildContext, String?)? pincodeControllerValidator;
  // Model for bottom_navGrey component.
  late BottomNavGreyModel bottomNavGreyModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    appBarUpdated2Model = createModel(context, () => AppBarUpdated2Model());
    bottomNavGreyModel = createModel(context, () => BottomNavGreyModel());
  }

  void dispose() {
    appBarUpdated2Model.dispose();
    nameController?.dispose();
    emailController?.dispose();
    phoneTextController?.dispose();
    pincodeController?.dispose();
    bottomNavGreyModel.dispose();
  }

  /// Additional helper methods are added here.

}
