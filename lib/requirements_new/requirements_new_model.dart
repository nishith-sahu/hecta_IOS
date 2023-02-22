import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/app_bar_updated_widget.dart';
import '../components/bottom_nav_pref_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../custom_code/widgets/index.dart' as custom_widgets;
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RequirementsNewModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for AppBar_updated component.
  late AppBarUpdatedModel appBarUpdatedModel;
  // State field(s) for rf widget.
  bool? rfValue;
  // State field(s) for ih widget.
  bool? ihValue;
  // State field(s) for cp widget.
  bool? cpValue;
  // State field(s) for ofc widget.
  bool? ofcValue;
  // State field(s) for al widget.
  bool? alValue;
  // State field(s) for rp widget.
  bool? rpValue;
  // State field(s) for lnb widget.
  bool? lnbValue;
  // State field(s) for ip widget.
  bool? ipValue;
  // State field(s) for shop widget.
  bool? shopValue;
  // Model for bottom_navPref component.
  late BottomNavPrefModel bottomNavPrefModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    appBarUpdatedModel = createModel(context, () => AppBarUpdatedModel());
    bottomNavPrefModel = createModel(context, () => BottomNavPrefModel());
  }

  void dispose() {
    appBarUpdatedModel.dispose();
    bottomNavPrefModel.dispose();
  }

  /// Additional helper methods are added here.

}
