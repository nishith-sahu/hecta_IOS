import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ApplicationForm2ExistsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isMediaUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // State field(s) for PAN widget.
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
  // State field(s) for transaction_date widget.
  TextEditingController? transactionDateController;
  String? Function(BuildContext, String?)? transactionDateControllerValidator;
  // State field(s) for transaction_time widget.
  TextEditingController? transactionTimeController;
  String? Function(BuildContext, String?)? transactionTimeControllerValidator;
  // State field(s) for payment_method widget.
  String? paymentMethodValue;
  // State field(s) for EMD_currency widget.
  String? eMDCurrencyValue;
  // State field(s) for amount widget.
  TextEditingController? amountController;
  String? Function(BuildContext, String?)? amountControllerValidator;
  // State field(s) for referenc widget.
  TextEditingController? referencController;
  String? Function(BuildContext, String?)? referencControllerValidator;
  bool isMediaUploading4 = false;
  FFUploadedFile uploadedLocalFile4 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl4 = '';

  // State field(s) for bank_account_number widget.
  TextEditingController? bankAccountNumberController;
  String? Function(BuildContext, String?)? bankAccountNumberControllerValidator;
  // State field(s) for name widget.
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for IFSC widget.
  TextEditingController? ifscController;
  String? Function(BuildContext, String?)? ifscControllerValidator;
  // State field(s) for date widget.
  TextEditingController? dateController;
  String? Function(BuildContext, String?)? dateControllerValidator;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue1;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue2;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    panController?.dispose();
    biddingAsController?.dispose();
    shareholdingController?.dispose();
    transactionDateController?.dispose();
    transactionTimeController?.dispose();
    amountController?.dispose();
    referencController?.dispose();
    bankAccountNumberController?.dispose();
    nameController?.dispose();
    ifscController?.dispose();
    dateController?.dispose();
  }

  /// Additional helper methods are added here.

}
