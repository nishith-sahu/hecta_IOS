import '../components/bottom_nav_grey_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EncumberanceCERSAIScreenModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

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
