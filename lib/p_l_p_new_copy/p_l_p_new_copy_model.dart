import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/bottom_nav_prop_widget.dart';
import '../components/empty_requirements_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_google_map.dart';
import '../flutter_flow/flutter_flow_static_map.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/lat_lng.dart';
import '../custom_code/actions/index.dart' as actions;
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mapbox_search/mapbox_search.dart';
import 'package:provider/provider.dart';

class PLPNewCopyModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for trending widget.
  bool? trendingValue;
  // State field(s) for mapview widget.
  bool? mapviewValue;
  // Model for empty_requirements component.
  late EmptyRequirementsModel emptyRequirementsModel;
  // State field(s) for listingMap widget.
  LatLng? listingMapsCenter;
  final listingMapsController = Completer<GoogleMapController>();
  // State field(s) for ListingPV widget.
  PageController? listingPVController;
  // State field(s) for trendMap widget.
  LatLng? trendMapsCenter;
  final trendMapsController = Completer<GoogleMapController>();
  // State field(s) for TrendingPV widget.
  PageController? trendingPVController;
  // Model for bottom_navProp component.
  late BottomNavPropModel bottomNavPropModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    emptyRequirementsModel =
        createModel(context, () => EmptyRequirementsModel());
    bottomNavPropModel = createModel(context, () => BottomNavPropModel());
  }

  void dispose() {
    emptyRequirementsModel.dispose();
    bottomNavPropModel.dispose();
  }

  /// Additional helper methods are added here.

}
