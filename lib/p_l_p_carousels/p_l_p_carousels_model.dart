import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/bottom_nav_grey_widget.dart';
import '../components/empty_requirements_widget.dart';
import '../components/empty_trending_widget.dart';
import '../components/loader_widget.dart';
import '../flutter_flow/flutter_flow_static_map.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/lat_lng.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mapbox_search/mapbox_search.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

class PLPCarouselsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for trending widget.
  bool? trendingValue;
  // Model for bottom_navGrey component.
  late BottomNavGreyModel bottomNavGreyModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    bottomNavGreyModel = createModel(context, () => BottomNavGreyModel());
  }

  void dispose() {
    bottomNavGreyModel.dispose();
  }

  /// Additional helper methods are added here.

}
