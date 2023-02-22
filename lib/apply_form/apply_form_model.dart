import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../components/app_bar_updated2_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ApplyFormModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for AppBar_updated2 component.
  late AppBarUpdated2Model appBarUpdated2Model;
  // State field(s) for id widget.
  TextEditingController? idController;
  String? Function(BuildContext, String?)? idControllerValidator;
  // State field(s) for rprice widget.
  TextEditingController? rpriceController;
  String? Function(BuildContext, String?)? rpriceControllerValidator;
  // State field(s) for title widget.
  TextEditingController? titleController;
  String? Function(BuildContext, String?)? titleControllerValidator;
  // State field(s) for seller widget.
  TextEditingController? sellerController;
  String? Function(BuildContext, String?)? sellerControllerValidator;
  // State field(s) for name widget.
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for middle_name widget.
  TextEditingController? middleNameController;
  String? Function(BuildContext, String?)? middleNameControllerValidator;
  // State field(s) for last_name widget.
  TextEditingController? lastNameController;
  String? Function(BuildContext, String?)? lastNameControllerValidator;
  // State field(s) for fathers_name widget.
  TextEditingController? fathersNameController;
  String? Function(BuildContext, String?)? fathersNameControllerValidator;
  // State field(s) for dob widget.
  TextEditingController? dobController;
  String? Function(BuildContext, String?)? dobControllerValidator;
  // State field(s) for phone widget.
  TextEditingController? phoneController;
  String? Function(BuildContext, String?)? phoneControllerValidator;
  // State field(s) for email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for status widget.
  String? statusValue;
  // State field(s) for perm_add1 widget.
  TextEditingController? permAdd1Controller;
  String? Function(BuildContext, String?)? permAdd1ControllerValidator;
  // State field(s) for perm_add2 widget.
  TextEditingController? permAdd2Controller;
  String? Function(BuildContext, String?)? permAdd2ControllerValidator;
  // State field(s) for addresschck widget.
  bool? addresschckValue;
  // State field(s) for curr_add1 widget.
  TextEditingController? currAdd1Controller;
  String? Function(BuildContext, String?)? currAdd1ControllerValidator;
  // State field(s) for currr_add2 widget.
  TextEditingController? currrAdd2Controller;
  String? Function(BuildContext, String?)? currrAdd2ControllerValidator;
  // State field(s) for domicile widget.
  String? domicileValue;
  bool isMediaUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // State field(s) for pan widget.
  TextEditingController? panController;
  String? Function(BuildContext, String?)? panControllerValidator;
  bool isMediaUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for address_proof widget.
  String? addressProofValue;
  bool isMediaUploading3 = false;
  FFUploadedFile uploadedLocalFile3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl3 = '';

  // State field(s) for bidding_as widget.
  TextEditingController? biddingAsController;
  String? Function(BuildContext, String?)? biddingAsControllerValidator;
  // State field(s) for shareholding widget.
  TextEditingController? shareholdingController;
  String? Function(BuildContext, String?)? shareholdingControllerValidator;
  // State field(s) for msg widget.
  TextEditingController? msgController1;
  String? Function(BuildContext, String?)? msgController1Validator;
  // State field(s) for msg widget.
  TextEditingController? msgController2;
  String? Function(BuildContext, String?)? msgController2Validator;
  // State field(s) for time_transaction widget.
  TextEditingController? timeTransactionController;
  String? Function(BuildContext, String?)? timeTransactionControllerValidator;
  // State field(s) for payment_method widget.
  String? paymentMethodValue;
  // State field(s) for amount widget.
  TextEditingController? amountController;
  String? Function(BuildContext, String?)? amountControllerValidator;
  // State field(s) for ref_number widget.
  TextEditingController? refNumberController;
  String? Function(BuildContext, String?)? refNumberControllerValidator;
  bool isMediaUploading4 = false;
  FFUploadedFile uploadedLocalFile4 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl4 = '';

  // State field(s) for accout widget.
  TextEditingController? accoutController;
  String? Function(BuildContext, String?)? accoutControllerValidator;
  // State field(s) for name_in_bank widget.
  TextEditingController? nameInBankController;
  String? Function(BuildContext, String?)? nameInBankControllerValidator;
  // State field(s) for ifsc widget.
  TextEditingController? ifscController;
  String? Function(BuildContext, String?)? ifscControllerValidator;
  // State field(s) for CheckboxListTile1 widget.
  bool? checkboxListTile1Value;
  // State field(s) for CheckboxListTile2 widget.
  bool? checkboxListTile2Value;
  // State field(s) for CheckboxListTile3 widget.
  bool? checkboxListTile3Value;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    appBarUpdated2Model = createModel(context, () => AppBarUpdated2Model());
  }

  void dispose() {
    appBarUpdated2Model.dispose();
    idController?.dispose();
    rpriceController?.dispose();
    titleController?.dispose();
    sellerController?.dispose();
    nameController?.dispose();
    middleNameController?.dispose();
    lastNameController?.dispose();
    fathersNameController?.dispose();
    dobController?.dispose();
    phoneController?.dispose();
    emailController?.dispose();
    permAdd1Controller?.dispose();
    permAdd2Controller?.dispose();
    currAdd1Controller?.dispose();
    currrAdd2Controller?.dispose();
    panController?.dispose();
    biddingAsController?.dispose();
    shareholdingController?.dispose();
    msgController1?.dispose();
    msgController2?.dispose();
    timeTransactionController?.dispose();
    amountController?.dispose();
    refNumberController?.dispose();
    accoutController?.dispose();
    nameInBankController?.dispose();
    ifscController?.dispose();
  }

  /// Additional helper methods are added here.

}
