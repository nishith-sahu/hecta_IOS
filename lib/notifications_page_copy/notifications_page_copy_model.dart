import '../auth/firebase_user_provider.dart';
import '../components/app_bar_updated2_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NotificationsPageCopyModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for AppBar_updated2 component.
  late AppBarUpdated2Model appBarUpdated2Model;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    appBarUpdated2Model = createModel(context, () => AppBarUpdated2Model());
  }

  void dispose() {
    appBarUpdated2Model.dispose();
  }

  /// Additional helper methods are added here.

}
