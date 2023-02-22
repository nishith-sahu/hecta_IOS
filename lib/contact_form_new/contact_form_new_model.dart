import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/app_bar_updated2_widget.dart';
import '../components/bottom_nav_grey_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactFormNewModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for AppBar_updated2 component.
  late AppBarUpdated2Model appBarUpdated2Model;
  // State field(s) for name widget.
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  String? _nameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for phone widget.
  TextEditingController? phoneController;
  String? Function(BuildContext, String?)? phoneControllerValidator;
  String? _phoneControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^[0-9]{10}\$').hasMatch(val)) {
      return 'Enter valid phone number';
    }
    return null;
  }

  // State field(s) for email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  String? _emailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  // State field(s) for msg widget.
  TextEditingController? msgController;
  String? Function(BuildContext, String?)? msgControllerValidator;
  // Model for bottom_navGrey component.
  late BottomNavGreyModel bottomNavGreyModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    appBarUpdated2Model = createModel(context, () => AppBarUpdated2Model());
    nameControllerValidator = _nameControllerValidator;
    phoneControllerValidator = _phoneControllerValidator;
    emailControllerValidator = _emailControllerValidator;
    bottomNavGreyModel = createModel(context, () => BottomNavGreyModel());
  }

  void dispose() {
    appBarUpdated2Model.dispose();
    nameController?.dispose();
    phoneController?.dispose();
    emailController?.dispose();
    msgController?.dispose();
    bottomNavGreyModel.dispose();
  }

  /// Additional helper methods are added here.

}
