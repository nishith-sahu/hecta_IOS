import '../auth/auth_util.dart';
import '../auth/firebase_user_provider.dart';
import '../backend/backend.dart';
import '../components/app_bar_updated_widget.dart';
import '../components/bottom_nav_fav_widget.dart';
import '../components/empty_fav_widget.dart';
import '../components/loader_widget.dart';
import '../flutter_flow/flutter_flow_static_map.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/lat_lng.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mapbox_search/mapbox_search.dart';
import 'package:provider/provider.dart';

class FavNewModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for AppBar_updated component.
  late AppBarUpdatedModel appBarUpdatedModel;
  // Model for bottom_navFav component.
  late BottomNavFavModel bottomNavFavModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    appBarUpdatedModel = createModel(context, () => AppBarUpdatedModel());
    bottomNavFavModel = createModel(context, () => BottomNavFavModel());
  }

  void dispose() {
    appBarUpdatedModel.dispose();
    bottomNavFavModel.dispose();
  }

  /// Additional helper methods are added here.

}
