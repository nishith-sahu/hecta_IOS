import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/app_bar_updated_widget.dart';
import '../components/bottom_nav_home_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeScreenModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for AppBar_updated component.
  late AppBarUpdatedModel appBarUpdatedModel;
  // State field(s) for PageView widget.
  PageController? pageViewController;
  // Model for bottom_navHome component.
  late BottomNavHomeModel bottomNavHomeModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    appBarUpdatedModel = createModel(context, () => AppBarUpdatedModel());
    bottomNavHomeModel = createModel(context, () => BottomNavHomeModel());
  }

  void dispose() {
    appBarUpdatedModel.dispose();
    bottomNavHomeModel.dispose();
  }

  /// Additional helper methods are added here.

}
