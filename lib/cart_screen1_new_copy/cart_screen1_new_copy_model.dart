import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/app_bar_updated2_widget.dart';
import '../components/bottom_nav_grey_widget.dart';
import '../components/empty_cart_copy_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CartScreen1NewCopyModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for AppBar_updated2 component.
  late AppBarUpdated2Model appBarUpdated2Model;
  // Model for bottom_navGrey component.
  late BottomNavGreyModel bottomNavGreyModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    appBarUpdated2Model = createModel(context, () => AppBarUpdated2Model());
    bottomNavGreyModel = createModel(context, () => BottomNavGreyModel());
  }

  void dispose() {
    appBarUpdated2Model.dispose();
    bottomNavGreyModel.dispose();
  }

  /// Additional helper methods are added here.

}
