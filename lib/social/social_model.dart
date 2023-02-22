import '../components/app_bar_updated_widget.dart';
import '../components/bottom_nav_grey_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SocialModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for AppBar_updated component.
  late AppBarUpdatedModel appBarUpdatedModel;
  // Model for bottom_navGrey component.
  late BottomNavGreyModel bottomNavGreyModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    appBarUpdatedModel = createModel(context, () => AppBarUpdatedModel());
    bottomNavGreyModel = createModel(context, () => BottomNavGreyModel());
  }

  void dispose() {
    appBarUpdatedModel.dispose();
    bottomNavGreyModel.dispose();
  }

  /// Additional helper methods are added here.

}
