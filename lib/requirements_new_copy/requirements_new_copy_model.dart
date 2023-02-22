import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/bottom_nav_pref_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../custom_code/widgets/index.dart' as custom_widgets;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RequirementsNewCopyModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for al widget.
  bool? alValue;
  // State field(s) for cs widget.
  bool? csValue;
  // State field(s) for il widget.
  bool? ilValue;
  // State field(s) for lnb widget.
  bool? lnbValue;
  // State field(s) for rf widget.
  bool? rfValue;
  // State field(s) for rp widget.
  bool? rpValue;
  // State field(s) for cp widget.
  bool? cpValue;
  // State field(s) for ih widget.
  bool? ihValue;
  // State field(s) for ip widget.
  bool? ipValue;
  // State field(s) for ofc widget.
  bool? ofcValue;
  // State field(s) for rl widget.
  bool? rlValue;
  // State field(s) for shop widget.
  bool? shopValue;
  // Model for bottom_navPref component.
  late BottomNavPrefModel bottomNavPrefModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    bottomNavPrefModel = createModel(context, () => BottomNavPrefModel());
  }

  void dispose() {
    textController?.dispose();
    bottomNavPrefModel.dispose();
  }

  /// Additional helper methods are added here.

}
