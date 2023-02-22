import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../../index.dart';
import '../../main.dart';

final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    if (mounted) {
      setState(() => _loading = true);
    }
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        context.pushNamed(
          initialPageName,
          params: parameterData.params,
          extra: parameterData.extra,
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: Colors.transparent,
          child: Image.asset(
            'assets/images/Group_96.png',
            fit: BoxFit.cover,
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get params => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'landingPage': ParameterData.none(),
  'FeedBack_New': ParameterData.none(),
  'Notifications_page': ParameterData.none(),
  'otp_page': (data) async => ParameterData(
        allParams: {
          'otp': getParameter<String>(data, 'otp'),
          'phoneNumber': getParameter<String>(data, 'phoneNumber'),
        },
      ),
  'MyAccountsPage': (data) async => ParameterData(
        allParams: {
          'phone': getParameter<String>(data, 'phone'),
          'verified': getParameter<bool>(data, 'verified'),
        },
      ),
  'Visit_Property': ParameterData.none(),
  'demo': ParameterData.none(),
  'application_form2_notExists': (data) async => ParameterData(
        allParams: {
          'propRef': getParameter<DocumentReference>(data, 'propRef'),
          'form1Ref': getParameter<DocumentReference>(data, 'form1Ref'),
        },
      ),
  'application_form1_notExists': (data) async => ParameterData(
        allParams: {
          'propRef': getParameter<DocumentReference>(data, 'propRef'),
          'propID': getParameter<String>(data, 'propID'),
        },
      ),
  'application_form1_exists': (data) async => ParameterData(
        allParams: {
          'propID': getParameter<String>(data, 'propID'),
        },
      ),
  'error404': ParameterData.none(),
  'Menubar': ParameterData.none(),
  'application_form2_exists': (data) async => ParameterData(
        allParams: {
          'propRef': getParameter<DocumentReference>(data, 'propRef'),
          'propID': getParameter<String>(data, 'propID'),
          'pan': getParameter<String>(data, 'pan'),
          'photo': getParameter<String>(data, 'photo'),
          'addressProof': getParameter<String>(data, 'addressProof'),
          'emdProof': getParameter<String>(data, 'emdProof'),
          'form1Ref': getParameter<DocumentReference>(data, 'form1Ref'),
        },
      ),
  'cart_screen_empty': ParameterData.none(),
  'enCumberanceReport': ParameterData.none(),
  'applied_forms': (data) async => ParameterData(
        allParams: {
          'propId': getParameter<String>(data, 'propId'),
        },
      ),
  'calendly': (data) async => ParameterData(
        allParams: {
          'url': getParameter<String>(data, 'url'),
        },
      ),
  'faq': ParameterData.none(),
  'pref_onboarding': (data) async => ParameterData(
        allParams: {
          'fromSearch': getParameter<bool>(data, 'fromSearch'),
        },
      ),
  'pref_onboardingCopy': (data) async => ParameterData(
        allParams: {
          'fromSearch': getParameter<bool>(data, 'fromSearch'),
        },
      ),
  'demoCopy': ParameterData.none(),
  'Splash_Screen_New': ParameterData.none(),
  'RequirementsOnboard_New': (data) async => ParameterData(
        allParams: {
          'fromSearch': getParameter<bool>(data, 'fromSearch'),
        },
      ),
  'map': (data) async => ParameterData(
        allParams: {},
      ),
  'EOI_Form': (data) async => ParameterData(
        allParams: {
          'propRef': getParameter<DocumentReference>(data, 'propRef'),
        },
      ),
  'Contact_Form_New': ParameterData.none(),
  'FiltersNew': (data) async => ParameterData(
        allParams: {
          'fromSearch': getParameter<bool>(data, 'fromSearch'),
          'carousels': getParameter<bool>(data, 'carousels'),
          'main': getParameter<bool>(data, 'main'),
          'fav': getParameter<bool>(data, 'fav'),
          'eoi': getParameter<bool>(data, 'eoi'),
          'trending': getParameter<bool>(data, 'trending'),
          'similar': getParameter<bool>(data, 'similar'),
          'searchkeyword': getParameter<String>(data, 'searchkeyword'),
          'carouselsTitle': getParameter<String>(data, 'carouselsTitle'),
          'similarCity': getParameter<String>(data, 'similarCity'),
          'similarType': getParameter<String>(data, 'similarType'),
        },
      ),
  'Search_ScreenNew': ParameterData.none(),
  'Signin_Screen': (data) async => ParameterData(
        allParams: {
          'email': getParameter<String>(data, 'email'),
          'fromRegister': getParameter<bool>(data, 'fromRegister'),
        },
      ),
  'Talk_to_A_lawyer_Screen': ParameterData.none(),
  'Home_Screen': ParameterData.none(),
  'Encumberance_CERSAI_Screen': ParameterData.none(),
  'Requirements_New': (data) async => ParameterData(
        allParams: {
          'fromSearch': getParameter<bool>(data, 'fromSearch'),
        },
      ),
  'Buy_Property_New': ParameterData.none(),
  'Get_Loan_new': ParameterData.none(),
  'order_screen_empty': ParameterData.none(),
  'PDP_New': (data) async => ParameterData(
        allParams: {
          'propRef': getParameter<DocumentReference>(data, 'propRef'),
        },
      ),
  'Loan_Application_Form': (data) async => ParameterData(
        allParams: {
          'propref': getParameter<DocumentReference>(data, 'propref'),
        },
      ),
  'Fav_New': ParameterData.none(),
  'PLP_NewSearch': (data) async => ParameterData(
        allParams: {
          'searchkeyword': getParameter<String>(data, 'searchkeyword'),
          'carousels': getParameter<bool>(data, 'carousels'),
          'trending': getParameter<bool>(data, 'trending'),
        },
      ),
  'PLP_Carousels': (data) async => ParameterData(
        allParams: {
          'title': getParameter<String>(data, 'title'),
          'trending': getParameter<bool>(data, 'trending'),
        },
      ),
  'EOI_Form2': (data) async => ParameterData(
        allParams: {
          'propRef': getParameter<DocumentReference>(data, 'propRef'),
        },
      ),
  'PLPExpressinterest': (data) async => ParameterData(
        allParams: {
          'pageNum': getParameter<int>(data, 'pageNum'),
          'carousels': getParameter<bool>(data, 'carousels'),
          'title': getParameter<String>(data, 'title'),
          'trending': getParameter<bool>(data, 'trending'),
        },
      ),
  'PLP_New': (data) async => ParameterData(
        allParams: {
          'pageNum': getParameter<int>(data, 'pageNum'),
          'carousels': getParameter<bool>(data, 'carousels'),
          'title': getParameter<String>(data, 'title'),
          'trending': getParameter<bool>(data, 'trending'),
        },
      ),
  'PLP_Fav': (data) async => ParameterData(
        allParams: {
          'pageNum': getParameter<int>(data, 'pageNum'),
          'carousels': getParameter<bool>(data, 'carousels'),
          'title': getParameter<String>(data, 'title'),
          'trending': getParameter<bool>(data, 'trending'),
        },
      ),
  'cart_Screen1_new': ParameterData.none(),
  'my_express_interest_empty': ParameterData.none(),
  'cart_Screen3_new': (data) async => ParameterData(
        allParams: {
          'subtotal': getParameter<double>(data, 'subtotal'),
          'gst': getParameter<double>(data, 'gst'),
          'ordettotal': getParameter<double>(data, 'ordettotal'),
          'email': getParameter<String>(data, 'email'),
        },
      ),
  'cart_Screen2_new': ParameterData.none(),
  'PDP_NewSearch': (data) async => ParameterData(
        allParams: {
          'title': getParameter<String>(data, 'title'),
        },
      ),
  'cart_Screen4_new': ParameterData.none(),
  'Requirements_NewCopy': ParameterData.none(),
  'Signin_ScreenCopy': (data) async => ParameterData(
        allParams: {
          'email': getParameter<String>(data, 'email'),
          'fromRegister': getParameter<bool>(data, 'fromRegister'),
        },
      ),
  'Search_ScreenReq': ParameterData.none(),
  'html': ParameterData.none(),
  'Apply_Form': (data) async => ParameterData(
        allParams: {
          'propRef': getParameter<DocumentReference>(data, 'propRef'),
        },
      ),
  'SignUp_Screen': (data) async => ParameterData(
        allParams: {
          'name': getParameter<String>(data, 'name'),
          'email': getParameter<String>(data, 'email'),
          'phone': getParameter<String>(data, 'phone'),
          'pass': getParameter<String>(data, 'pass'),
          'pass1': getParameter<String>(data, 'pass1'),
          'pincode': getParameter<String>(data, 'pincode'),
        },
      ),
  'PLP_NewCopy': (data) async => ParameterData(
        allParams: {
          'pageNum': getParameter<int>(data, 'pageNum'),
        },
      ),
  'Notifications_pageCopy': ParameterData.none(),
  'Search_ScreenReqOnboard': ParameterData.none(),
  'resetPassword': (data) async => ParameterData(
        allParams: {
          'email': getParameter<String>(data, 'email'),
          'fromRegister': getParameter<bool>(data, 'fromRegister'),
        },
      ),
  'Loan_Application2': ParameterData.none(),
  'PLP_Similar': (data) async => ParameterData(
        allParams: {
          'pageNum': getParameter<int>(data, 'pageNum'),
          'carousels': getParameter<bool>(data, 'carousels'),
          'title': getParameter<String>(data, 'title'),
          'city': getParameter<String>(data, 'city'),
          'propType': getParameter<String>(data, 'propType'),
          'trending': getParameter<bool>(data, 'trending'),
        },
      ),
  'cart_order_new': ParameterData.none(),
  'social': ParameterData.none(),
  'MyAccountsPage_New': (data) async => ParameterData(
        allParams: {
          'phone': getParameter<String>(data, 'phone'),
          'verified': getParameter<bool>(data, 'verified'),
        },
      ),
  'cart_Screen1_newCopy': ParameterData.none(),
  'legalCopy': ParameterData.none(),
  'LegalCopyNew': ParameterData.none(),
  'demo3': ParameterData.none(),
  'FiltersNewCopy': (data) async => ParameterData(
        allParams: {
          'fromSearch': getParameter<bool>(data, 'fromSearch'),
          'carousels': getParameter<bool>(data, 'carousels'),
          'main': getParameter<bool>(data, 'main'),
          'fav': getParameter<bool>(data, 'fav'),
          'eoi': getParameter<bool>(data, 'eoi'),
          'trending': getParameter<bool>(data, 'trending'),
          'similar': getParameter<bool>(data, 'similar'),
          'searchkeyword': getParameter<String>(data, 'searchkeyword'),
          'carouselsTitle': getParameter<String>(data, 'carouselsTitle'),
          'similarCity': getParameter<String>(data, 'similarCity'),
          'similarType': getParameter<String>(data, 'similarType'),
        },
      ),
  'cart_Screen3_newCopy': (data) async => ParameterData(
        allParams: {
          'subtotal': getParameter<double>(data, 'subtotal'),
          'gst': getParameter<double>(data, 'gst'),
          'ordettotal': getParameter<double>(data, 'ordettotal'),
          'email': getParameter<String>(data, 'email'),
        },
      ),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
