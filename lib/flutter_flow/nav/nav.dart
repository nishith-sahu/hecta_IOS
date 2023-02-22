import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '../flutter_flow_theme.dart';
import '../../backend/backend.dart';

import '../../auth/firebase_user_provider.dart';
import '../../backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;

import '../../index.dart';
import '../../main.dart';
import '../lat_lng.dart';
import '../place.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  HectaFirebaseUser? initialUser;
  HectaFirebaseUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(HectaFirebaseUser newUser) {
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    if (notifyOnAuthChange) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, _) => appStateNotifier.loggedIn
          ? HomeScreenWidget()
          : SplashScreenNewWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? HomeScreenWidget()
              : SplashScreenNewWidget(),
          routes: [
            FFRoute(
              name: 'landingPage',
              path: 'landingPage',
              requireAuth: true,
              builder: (context, params) => LandingPageWidget(),
            ),
            FFRoute(
              name: 'FeedBack_New',
              path: 'feedBackNew',
              requireAuth: true,
              builder: (context, params) => FeedBackNewWidget(),
            ),
            FFRoute(
              name: 'Notifications_page',
              path: 'notificationsPage',
              requireAuth: true,
              builder: (context, params) => NotificationsPageWidget(),
            ),
            FFRoute(
              name: 'otp_page',
              path: 'otpPage',
              requireAuth: true,
              builder: (context, params) => OtpPageWidget(
                otp: params.getParam('otp', ParamType.String),
                phoneNumber: params.getParam('phoneNumber', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'MyAccountsPage',
              path: 'myAccountsPage',
              requireAuth: true,
              builder: (context, params) => MyAccountsPageWidget(
                phone: params.getParam('phone', ParamType.String),
                verified: params.getParam('verified', ParamType.bool),
              ),
            ),
            FFRoute(
              name: 'Visit_Property',
              path: 'visitProperty',
              requireAuth: true,
              builder: (context, params) => VisitPropertyWidget(),
            ),
            FFRoute(
              name: 'demo',
              path: 'demo',
              requireAuth: true,
              builder: (context, params) => DemoWidget(),
            ),
            FFRoute(
              name: 'application_form2_notExists',
              path: 'applicationForm2NotExists',
              requireAuth: true,
              builder: (context, params) => ApplicationForm2NotExistsWidget(
                propRef: params.getParam('propRef', ParamType.DocumentReference,
                    false, ['Properties']),
                form1Ref: params.getParam('form1Ref',
                    ParamType.DocumentReference, false, ['property_form1']),
              ),
            ),
            FFRoute(
              name: 'application_form1_notExists',
              path: 'applicationForm1NotExists',
              requireAuth: true,
              builder: (context, params) => ApplicationForm1NotExistsWidget(
                propRef: params.getParam('propRef', ParamType.DocumentReference,
                    false, ['Properties']),
                propID: params.getParam('propID', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'application_form1_exists',
              path: 'applicationForm1Exists',
              requireAuth: true,
              builder: (context, params) => ApplicationForm1ExistsWidget(
                propID: params.getParam('propID', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'error404',
              path: 'error404',
              requireAuth: true,
              builder: (context, params) => Error404Widget(),
            ),
            FFRoute(
              name: 'Menubar',
              path: 'menubar',
              requireAuth: true,
              builder: (context, params) => MenubarWidget(),
            ),
            FFRoute(
              name: 'application_form2_exists',
              path: 'applicationForm2Exists',
              requireAuth: true,
              builder: (context, params) => ApplicationForm2ExistsWidget(
                propRef: params.getParam('propRef', ParamType.DocumentReference,
                    false, ['Properties']),
                propID: params.getParam('propID', ParamType.String),
                pan: params.getParam('pan', ParamType.String),
                photo: params.getParam('photo', ParamType.String),
                addressProof: params.getParam('addressProof', ParamType.String),
                emdProof: params.getParam('emdProof', ParamType.String),
                form1Ref: params.getParam('form1Ref',
                    ParamType.DocumentReference, false, ['property_form1']),
              ),
            ),
            FFRoute(
              name: 'cart_screen_empty',
              path: 'cartScreenEmpty',
              requireAuth: true,
              builder: (context, params) => CartScreenEmptyWidget(),
            ),
            FFRoute(
              name: 'enCumberanceReport',
              path: 'enCumberanceReport',
              requireAuth: true,
              builder: (context, params) => EnCumberanceReportWidget(),
            ),
            FFRoute(
              name: 'applied_forms',
              path: 'appliedForms',
              requireAuth: true,
              builder: (context, params) => AppliedFormsWidget(
                propId: params.getParam('propId', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'calendly',
              path: 'calendly',
              requireAuth: true,
              builder: (context, params) => CalendlyWidget(
                url: params.getParam('url', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'faq',
              path: 'faq',
              requireAuth: true,
              builder: (context, params) => FaqWidget(),
            ),
            FFRoute(
              name: 'pref_onboarding',
              path: 'prefOnboarding',
              requireAuth: true,
              builder: (context, params) => PrefOnboardingWidget(
                fromSearch: params.getParam('fromSearch', ParamType.bool),
              ),
            ),
            FFRoute(
              name: 'pref_onboardingCopy',
              path: 'prefOnboardingCopy',
              requireAuth: true,
              builder: (context, params) => PrefOnboardingCopyWidget(
                fromSearch: params.getParam('fromSearch', ParamType.bool),
              ),
            ),
            FFRoute(
              name: 'demoCopy',
              path: 'demoCopy',
              requireAuth: true,
              builder: (context, params) => DemoCopyWidget(),
            ),
            FFRoute(
              name: 'Splash_Screen_New',
              path: 'splashScreenNew',
              builder: (context, params) => SplashScreenNewWidget(),
            ),
            FFRoute(
              name: 'RequirementsOnboard_New',
              path: 'requirementsOnboardNew',
              requireAuth: true,
              builder: (context, params) => RequirementsOnboardNewWidget(
                fromSearch: params.getParam('fromSearch', ParamType.bool),
              ),
            ),
            FFRoute(
              name: 'map',
              path: 'map',
              requireAuth: true,
              builder: (context, params) => MapWidget(
                loc: params.getParam<LatLng>('loc', ParamType.LatLng, true),
                propRefs: params.getParam<DocumentReference>('propRefs',
                    ParamType.DocumentReference, true, ['Properties']),
              ),
            ),
            FFRoute(
              name: 'EOI_Form',
              path: 'eOIForm',
              requireAuth: true,
              builder: (context, params) => EOIFormWidget(
                propRef: params.getParam('propRef', ParamType.DocumentReference,
                    false, ['Properties']),
              ),
            ),
            FFRoute(
              name: 'Contact_Form_New',
              path: 'contactFormNew',
              requireAuth: true,
              builder: (context, params) => ContactFormNewWidget(),
            ),
            FFRoute(
              name: 'FiltersNew',
              path: 'filtersNew',
              requireAuth: true,
              asyncParams: {
                'props':
                    getDocList(['Properties'], PropertiesRecord.serializer),
              },
              builder: (context, params) => FiltersNewWidget(
                fromSearch: params.getParam('fromSearch', ParamType.bool),
                props: params.getParam<PropertiesRecord>(
                    'props', ParamType.Document, true),
                carousels: params.getParam('carousels', ParamType.bool),
                main: params.getParam('main', ParamType.bool),
                fav: params.getParam('fav', ParamType.bool),
                eoi: params.getParam('eoi', ParamType.bool),
                trending: params.getParam('trending', ParamType.bool),
                similar: params.getParam('similar', ParamType.bool),
                searchkeyword:
                    params.getParam('searchkeyword', ParamType.String),
                carouselsTitle:
                    params.getParam('carouselsTitle', ParamType.String),
                similarCity: params.getParam('similarCity', ParamType.String),
                similarType: params.getParam('similarType', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Search_ScreenNew',
              path: 'searchScreenNew',
              requireAuth: true,
              builder: (context, params) => SearchScreenNewWidget(),
            ),
            FFRoute(
              name: 'Signin_Screen',
              path: 'signinScreen',
              builder: (context, params) => SigninScreenWidget(
                email: params.getParam('email', ParamType.String),
                fromRegister: params.getParam('fromRegister', ParamType.bool),
              ),
            ),
            FFRoute(
              name: 'Talk_to_A_lawyer_Screen',
              path: 'talkToALawyerScreen',
              requireAuth: true,
              builder: (context, params) => TalkToALawyerScreenWidget(),
            ),
            FFRoute(
              name: 'Home_Screen',
              path: 'homeScreen',
              requireAuth: true,
              builder: (context, params) => HomeScreenWidget(),
            ),
            FFRoute(
              name: 'Encumberance_CERSAI_Screen',
              path: 'encumberanceCERSAIScreen',
              requireAuth: true,
              builder: (context, params) => EncumberanceCERSAIScreenWidget(),
            ),
            FFRoute(
              name: 'Requirements_New',
              path: 'requirementsNew',
              requireAuth: true,
              builder: (context, params) => RequirementsNewWidget(
                fromSearch: params.getParam('fromSearch', ParamType.bool),
              ),
            ),
            FFRoute(
              name: 'Buy_Property_New',
              path: 'buyPropertyNew',
              requireAuth: true,
              builder: (context, params) => BuyPropertyNewWidget(),
            ),
            FFRoute(
              name: 'Get_Loan_new',
              path: 'getLoanNew',
              requireAuth: true,
              builder: (context, params) => GetLoanNewWidget(),
            ),
            FFRoute(
              name: 'order_screen_empty',
              path: 'orderScreenEmpty',
              requireAuth: true,
              builder: (context, params) => OrderScreenEmptyWidget(),
            ),
            FFRoute(
              name: 'PDP_New',
              path: 'pDPNew',
              requireAuth: true,
              builder: (context, params) => PDPNewWidget(
                propRef: params.getParam('propRef', ParamType.DocumentReference,
                    false, ['Properties']),
              ),
            ),
            FFRoute(
              name: 'Loan_Application_Form',
              path: 'loanApplicationForm',
              requireAuth: true,
              builder: (context, params) => LoanApplicationFormWidget(
                propref: params.getParam('propref', ParamType.DocumentReference,
                    false, ['Properties']),
              ),
            ),
            FFRoute(
              name: 'Fav_New',
              path: 'favNew',
              requireAuth: true,
              builder: (context, params) => FavNewWidget(),
            ),
            FFRoute(
              name: 'PLP_NewSearch',
              path: 'pLPNewSearch',
              requireAuth: true,
              builder: (context, params) => PLPNewSearchWidget(
                searchkeyword:
                    params.getParam('searchkeyword', ParamType.String),
                carousels: params.getParam('carousels', ParamType.bool),
                trending: params.getParam('trending', ParamType.bool),
              ),
            ),
            FFRoute(
              name: 'PLP_Carousels',
              path: 'pLPCarousels',
              requireAuth: true,
              builder: (context, params) => PLPCarouselsWidget(
                title: params.getParam('title', ParamType.String),
                trending: params.getParam('trending', ParamType.bool),
              ),
            ),
            FFRoute(
              name: 'EOI_Form2',
              path: 'eOIForm2',
              requireAuth: true,
              builder: (context, params) => EOIForm2Widget(
                propRef: params.getParam('propRef', ParamType.DocumentReference,
                    false, ['Properties']),
              ),
            ),
            FFRoute(
              name: 'PLPExpressinterest',
              path: 'pLPExpressinterest',
              requireAuth: true,
              builder: (context, params) => PLPExpressinterestWidget(
                pageNum: params.getParam('pageNum', ParamType.int),
                carousels: params.getParam('carousels', ParamType.bool),
                title: params.getParam('title', ParamType.String),
                trending: params.getParam('trending', ParamType.bool),
              ),
            ),
            FFRoute(
              name: 'PLP_New',
              path: 'pLPNew',
              requireAuth: true,
              builder: (context, params) => PLPNewWidget(
                pageNum: params.getParam('pageNum', ParamType.int),
                carousels: params.getParam('carousels', ParamType.bool),
                title: params.getParam('title', ParamType.String),
                trending: params.getParam('trending', ParamType.bool),
              ),
            ),
            FFRoute(
              name: 'PLP_Fav',
              path: 'pLPFav',
              requireAuth: true,
              builder: (context, params) => PLPFavWidget(
                pageNum: params.getParam('pageNum', ParamType.int),
                carousels: params.getParam('carousels', ParamType.bool),
                title: params.getParam('title', ParamType.String),
                trending: params.getParam('trending', ParamType.bool),
              ),
            ),
            FFRoute(
              name: 'cart_Screen1_new',
              path: 'cartScreen1New',
              requireAuth: true,
              builder: (context, params) => CartScreen1NewWidget(),
            ),
            FFRoute(
              name: 'my_express_interest_empty',
              path: 'myExpressInterestEmpty',
              requireAuth: true,
              builder: (context, params) => MyExpressInterestEmptyWidget(),
            ),
            FFRoute(
              name: 'cart_Screen3_new',
              path: 'cartScreen3New',
              requireAuth: true,
              builder: (context, params) => CartScreen3NewWidget(
                subtotal: params.getParam('subtotal', ParamType.double),
                gst: params.getParam('gst', ParamType.double),
                ordettotal: params.getParam('ordettotal', ParamType.double),
                email: params.getParam('email', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'cart_Screen2_new',
              path: 'cartScreen2New',
              requireAuth: true,
              builder: (context, params) => CartScreen2NewWidget(),
            ),
            FFRoute(
              name: 'PDP_NewSearch',
              path: 'pDPNewSearch',
              requireAuth: true,
              builder: (context, params) => PDPNewSearchWidget(
                title: params.getParam('title', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'cart_Screen4_new',
              path: 'cartScreen4New',
              requireAuth: true,
              builder: (context, params) => CartScreen4NewWidget(),
            ),
            FFRoute(
              name: 'Requirements_NewCopy',
              path: 'requirementsNewCopy',
              requireAuth: true,
              builder: (context, params) => RequirementsNewCopyWidget(),
            ),
            FFRoute(
              name: 'Signin_ScreenCopy',
              path: 'signinScreenCopy',
              builder: (context, params) => SigninScreenCopyWidget(
                email: params.getParam('email', ParamType.String),
                fromRegister: params.getParam('fromRegister', ParamType.bool),
              ),
            ),
            FFRoute(
              name: 'Search_ScreenReq',
              path: 'searchScreenReq',
              requireAuth: true,
              builder: (context, params) => SearchScreenReqWidget(),
            ),
            FFRoute(
              name: 'html',
              path: 'html',
              requireAuth: true,
              builder: (context, params) => HtmlWidget(),
            ),
            FFRoute(
              name: 'Apply_Form',
              path: 'applyForm',
              requireAuth: true,
              builder: (context, params) => ApplyFormWidget(
                propRef: params.getParam('propRef', ParamType.DocumentReference,
                    false, ['Properties']),
              ),
            ),
            FFRoute(
              name: 'SignUp_Screen',
              path: 'signUpScreen',
              builder: (context, params) => SignUpScreenWidget(
                name: params.getParam('name', ParamType.String),
                email: params.getParam('email', ParamType.String),
                phone: params.getParam('phone', ParamType.String),
                pass: params.getParam('pass', ParamType.String),
                pass1: params.getParam('pass1', ParamType.String),
                pincode: params.getParam('pincode', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'PLP_NewCopy',
              path: 'pLPNewCopy',
              requireAuth: true,
              builder: (context, params) => PLPNewCopyWidget(
                pageNum: params.getParam('pageNum', ParamType.int),
              ),
            ),
            FFRoute(
              name: 'Notifications_pageCopy',
              path: 'notificationsPageCopy',
              requireAuth: true,
              builder: (context, params) => NotificationsPageCopyWidget(),
            ),
            FFRoute(
              name: 'Search_ScreenReqOnboard',
              path: 'searchScreenReqOnboard',
              requireAuth: true,
              builder: (context, params) => SearchScreenReqOnboardWidget(),
            ),
            FFRoute(
              name: 'resetPassword',
              path: 'resetPassword',
              builder: (context, params) => ResetPasswordWidget(
                email: params.getParam('email', ParamType.String),
                fromRegister: params.getParam('fromRegister', ParamType.bool),
              ),
            ),
            FFRoute(
              name: 'Loan_Application2',
              path: 'loanApplication2',
              requireAuth: true,
              builder: (context, params) => LoanApplication2Widget(),
            ),
            FFRoute(
              name: 'PLP_Similar',
              path: 'pLPSimilar',
              requireAuth: true,
              builder: (context, params) => PLPSimilarWidget(
                pageNum: params.getParam('pageNum', ParamType.int),
                carousels: params.getParam('carousels', ParamType.bool),
                title: params.getParam('title', ParamType.String),
                city: params.getParam('city', ParamType.String),
                propType: params.getParam('propType', ParamType.String),
                trending: params.getParam('trending', ParamType.bool),
              ),
            ),
            FFRoute(
              name: 'cart_order_new',
              path: 'cartOrderNew',
              requireAuth: true,
              builder: (context, params) => CartOrderNewWidget(),
            ),
            FFRoute(
              name: 'social',
              path: 'social',
              requireAuth: true,
              builder: (context, params) => SocialWidget(),
            ),
            FFRoute(
              name: 'MyAccountsPage_New',
              path: 'myAccountsPageNew',
              requireAuth: true,
              builder: (context, params) => MyAccountsPageNewWidget(
                phone: params.getParam('phone', ParamType.String),
                verified: params.getParam('verified', ParamType.bool),
              ),
            ),
            FFRoute(
              name: 'cart_Screen1_newCopy',
              path: 'cartScreen1NewCopy',
              requireAuth: true,
              builder: (context, params) => CartScreen1NewCopyWidget(),
            ),
            FFRoute(
              name: 'legalCopy',
              path: 'legalCopy',
              requireAuth: true,
              builder: (context, params) => LegalCopyWidget(),
            ),
            FFRoute(
              name: 'LegalCopyNew',
              path: 'legalCopyNew',
              requireAuth: true,
              builder: (context, params) => LegalCopyNewWidget(),
            ),
            FFRoute(
              name: 'demo3',
              path: 'demo3',
              requireAuth: true,
              builder: (context, params) => Demo3Widget(),
            ),
            FFRoute(
              name: 'FiltersNewCopy',
              path: 'filtersNewCopy',
              requireAuth: true,
              asyncParams: {
                'props':
                    getDocList(['Properties'], PropertiesRecord.serializer),
              },
              builder: (context, params) => FiltersNewCopyWidget(
                fromSearch: params.getParam('fromSearch', ParamType.bool),
                props: params.getParam<PropertiesRecord>(
                    'props', ParamType.Document, true),
                carousels: params.getParam('carousels', ParamType.bool),
                main: params.getParam('main', ParamType.bool),
                fav: params.getParam('fav', ParamType.bool),
                eoi: params.getParam('eoi', ParamType.bool),
                trending: params.getParam('trending', ParamType.bool),
                similar: params.getParam('similar', ParamType.bool),
                searchkeyword:
                    params.getParam('searchkeyword', ParamType.String),
                carouselsTitle:
                    params.getParam('carouselsTitle', ParamType.String),
                similarCity: params.getParam('similarCity', ParamType.String),
                similarType: params.getParam('similarType', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'cart_Screen3_newCopy',
              path: 'cartScreen3NewCopy',
              requireAuth: true,
              builder: (context, params) => CartScreen3NewCopyWidget(
                subtotal: params.getParam('subtotal', ParamType.double),
                gst: params.getParam('gst', ParamType.double),
                ordettotal: params.getParam('ordettotal', ParamType.double),
                email: params.getParam('email', ParamType.String),
              ),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ).toRoute(appStateNotifier),
      ],
      urlPathStrategy: UrlPathStrategy.path,
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState =>
      (routerDelegate.refreshListenable as AppStateNotifier);
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void setRedirectLocationIfUnset(String location) =>
      (routerDelegate.refreshListenable as AppStateNotifier)
          .updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(params)
    ..addAll(queryParams)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList, collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/splashScreenNew';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/Group_96.png',
                    fit: BoxFit.cover,
                  ),
                )
              : PushNotificationsHandler(child: page);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
