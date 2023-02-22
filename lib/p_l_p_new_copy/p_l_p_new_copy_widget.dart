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
import 'p_l_p_new_copy_model.dart';
export 'p_l_p_new_copy_model.dart';

class PLPNewCopyWidget extends StatefulWidget {
  const PLPNewCopyWidget({
    Key? key,
    this.pageNum,
  }) : super(key: key);

  final int? pageNum;

  @override
  _PLPNewCopyWidgetState createState() => _PLPNewCopyWidgetState();
}

class _PLPNewCopyWidgetState extends State<PLPNewCopyWidget>
    with TickerProviderStateMixin {
  late PLPNewCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  final animationsMap = {
    'pageViewOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ShakeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          hz: 10,
          offset: Offset(0, 0),
          rotation: 0.087,
        ),
      ],
    ),
    'placeholderWidgetOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 1,
          end: 1,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PLPNewCopyModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'PLP_NewCopy'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('P_L_P_NEW_COPY_PLP_NewCopy_ON_LOAD');
      logFirebaseEvent('PLP_NewCopy_update_app_state');
      FFAppState().update(() {
        FFAppState().resFilList = functions
            .resFilterList(
                FFAppState().filterType.toList(),
                FFAppState().filterArea.toList(),
                FFAppState().filterMinBudget,
                FFAppState().filterMaxBudget)
            .toList();
      });
    });

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<PropertiesRecord>>(
      stream: queryPropertiesRecord(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        List<PropertiesRecord> pLPNewCopyPropertiesRecordList = snapshot.data!;
        return Title(
            title: 'PLP_NewCopy',
            color: FlutterFlowTheme.of(context).primaryColor,
            child: Scaffold(
              key: scaffoldKey,
              resizeToAvoidBottomInset: false,
              backgroundColor: Colors.white,
              body: SafeArea(
                child: GestureDetector(
                  onTap: () =>
                      FocusScope.of(context).requestFocus(_unfocusNode),
                  child: StreamBuilder<List<UserRecord>>(
                    stream: queryUserRecord(
                      queryBuilder: (userRecord) =>
                          userRecord.where('uid', isEqualTo: currentUserUid),
                      singleRecord: true,
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: CircularProgressIndicator(
                              color: FlutterFlowTheme.of(context).primaryColor,
                            ),
                          ),
                        );
                      }
                      List<UserRecord> containerUserRecordList = snapshot.data!;
                      final containerUserRecord =
                          containerUserRecordList.isNotEmpty
                              ? containerUserRecordList.first
                              : null;
                      return Container(
                        decoration: BoxDecoration(),
                        child: AuthUserStreamWidget(
                          builder: (context) =>
                              StreamBuilder<List<PropertiesRecord>>(
                            stream: queryPropertiesRecord(
                              queryBuilder: (propertiesRecord) =>
                                  propertiesRecord.whereIn(
                                      'uid',
                                      functions.filterCopy(
                                          pLPNewCopyPropertiesRecordList
                                              .toList(),
                                          (currentUserDocument?.cities
                                                      ?.toList() ??
                                                  [])
                                              .toList(),
                                          (currentUserDocument?.propertyType
                                                      ?.toList() ??
                                                  [])
                                              .toList(),
                                          valueOrDefault(
                                              currentUserDocument?.budgetTo,
                                              ''),
                                          valueOrDefault(
                                              currentUserDocument?.budgetFrom,
                                              ''),
                                          widget.pageNum!,
                                          FFAppState().filterState.toList(),
                                          FFAppState().filterArea.toList(),
                                          FFAppState().filterBanks.toList())),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: CircularProgressIndicator(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                    ),
                                  ),
                                );
                              }
                              List<PropertiesRecord>
                                  containerPropertiesRecordList =
                                  snapshot.data!;
                              return Container(
                                decoration: BoxDecoration(),
                                child: StreamBuilder<List<CarouselsRecord>>(
                                  stream: queryCarouselsRecord(
                                    queryBuilder: (carouselsRecord) =>
                                        carouselsRecord.where('title',
                                            isEqualTo: 'Hot Property'),
                                    singleRecord: true,
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: CircularProgressIndicator(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                          ),
                                        ),
                                      );
                                    }
                                    List<CarouselsRecord>
                                        columnCarouselsRecordList =
                                        snapshot.data!;
                                    final columnCarouselsRecord =
                                        columnCarouselsRecordList.isNotEmpty
                                            ? columnCarouselsRecordList.first
                                            : null;
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 5,
                                                    color: Color(0xFFBCBCBC),
                                                    offset: Offset(0, 1),
                                                    spreadRadius: 0,
                                                  )
                                                ],
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(15, 30, 0, 0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        InkWell(
                                                          onTap: () async {
                                                            logFirebaseEvent(
                                                                'P_L_P_NEW_COPY_Stack_i3bt29s4_ON_TAP');
                                                            logFirebaseEvent(
                                                                'Stack_navigate_to');

                                                            context.pushNamed(
                                                                'Menubar');
                                                          },
                                                          child: Stack(
                                                            children: [
                                                              Container(
                                                                width: 24,
                                                                height: 24,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xFF7AC5CD),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              50),
                                                                ),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Text(
                                                                      functions.getProfileInititals(
                                                                          currentUserEmail,
                                                                          currentUserDisplayName),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyText1Family,
                                                                            color:
                                                                                Colors.white,
                                                                            fontSize:
                                                                                12,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            15,
                                                                            15,
                                                                            0,
                                                                            0),
                                                                child:
                                                                    Container(
                                                                  width: 12,
                                                                  height: 12,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Color(
                                                                        0xFFF4F4F4),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            50),
                                                                  ),
                                                                  child: Icon(
                                                                    Icons
                                                                        .menu_sharp,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryColor,
                                                                    size: 10,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Container(
                                                                  width: 75,
                                                                  height: 20,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/images/Logo.svg',
                                                                    width: double
                                                                        .infinity,
                                                                    height: double
                                                                        .infinity,
                                                                    fit: BoxFit
                                                                        .contain,
                                                                  ),
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              0,
                                                                              15,
                                                                              0),
                                                                      child:
                                                                          InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'P_L_P_NEW_COPY_PAGE_Icon_9523irlu_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Icon_navigate_to');

                                                                          context
                                                                              .pushNamed('Search_ScreenNew');
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .search_sharp,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryColor,
                                                                          size:
                                                                              24,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              0,
                                                                              15,
                                                                              0),
                                                                      child:
                                                                          InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'P_L_P_NEW_COPY_PAGE_Icon_kgeitwp6_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Icon_navigate_to');

                                                                          context
                                                                              .pushNamed('cart_screen_empty');
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .shopping_cart_sharp,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          size:
                                                                              24,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              0,
                                                                              15,
                                                                              0),
                                                                      child:
                                                                          InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'P_L_P_NEW_COPY_PAGE_Icon_6wpbc14r_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Icon_navigate_to');

                                                                          context
                                                                              .pushNamed('Notifications_page');
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .notifications_sharp,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          size:
                                                                              24,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(39,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            'Bank se... Hecta pe!',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family,
                                                                  color: Color(
                                                                      0xFFBCBCBC),
                                                                  fontSize: 12,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText1Family),
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 15, 15, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        13,
                                                                        0),
                                                            child: InkWell(
                                                              onTap: () async {
                                                                logFirebaseEvent(
                                                                    'P_L_P_NEW_COPY_PAGE_Icon_s1je7cco_ON_TAP');
                                                                logFirebaseEvent(
                                                                    'Icon_navigate_to');

                                                                context
                                                                    .pushNamed(
                                                                  'FiltersNew',
                                                                  queryParams: {
                                                                    'fromSearch':
                                                                        serializeParam(
                                                                      false,
                                                                      ParamType
                                                                          .bool,
                                                                    ),
                                                                    'props':
                                                                        serializeParam(
                                                                      pLPNewCopyPropertiesRecordList,
                                                                      ParamType
                                                                          .Document,
                                                                      true,
                                                                    ),
                                                                  }.withoutNulls,
                                                                  extra: <
                                                                      String,
                                                                      dynamic>{
                                                                    'props':
                                                                        pLPNewCopyPropertiesRecordList,
                                                                  },
                                                                );
                                                              },
                                                              child: Icon(
                                                                Icons
                                                                    .tune_sharp,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                                size: 24,
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              height: 30,
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Builder(
                                                                builder:
                                                                    (context) {
                                                                  final items =
                                                                      FFAppState()
                                                                          .resFilList
                                                                          .toList();
                                                                  return ListView
                                                                      .builder(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .zero,
                                                                    shrinkWrap:
                                                                        true,
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    itemCount: items
                                                                        .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            itemsIndex) {
                                                                      final itemsItem =
                                                                          items[
                                                                              itemsIndex];
                                                                      return Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            0,
                                                                            5,
                                                                            0),
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Color(0xFFF4F4F4),
                                                                            borderRadius:
                                                                                BorderRadius.circular(5),
                                                                            border:
                                                                                Border.all(
                                                                              color: Color(0xFFBCBCBC),
                                                                              width: 1,
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Visibility(
                                                                            visible:
                                                                                itemsItem != '0 - 1000Cr+',
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10, 5, 5, 5),
                                                                                  child: Text(
                                                                                    itemsItem,
                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                          fontSize: 12,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 3, 10, 0),
                                                                                  child: InkWell(
                                                                                    onTap: () async {
                                                                                      logFirebaseEvent('P_L_P_NEW_COPY_PAGE_Icon_u1m26w0n_ON_TAP');
                                                                                      logFirebaseEvent('Icon_custom_action');
                                                                                      await actions.removeFilterItems(
                                                                                        itemsItem,
                                                                                        FFAppState().propertyTypes.toList(),
                                                                                      );
                                                                                    },
                                                                                    child: Icon(
                                                                                      Icons.clear_sharp,
                                                                                      color: FlutterFlowTheme.of(context).primaryColor,
                                                                                      size: 16,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 15, 15, 0),
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 1,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFFE0E0E0),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(0, 10,
                                                                  15, 12),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          10,
                                                                          0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  SelectionArea(
                                                                      child:
                                                                          Text(
                                                                    'Trending',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyText1Family,
                                                                          fontSize:
                                                                              14,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                        ),
                                                                  )),
                                                                  Container(
                                                                    width: 65,
                                                                    height: 40,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              20),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0xFFE0E0E0),
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Switch(
                                                                      value: _model
                                                                              .trendingValue ??=
                                                                          false,
                                                                      onChanged:
                                                                          (newValue) async {
                                                                        setState(() =>
                                                                            _model.trendingValue =
                                                                                newValue!);
                                                                      },
                                                                      activeColor:
                                                                          Colors
                                                                              .white,
                                                                      activeTrackColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      inactiveTrackColor:
                                                                          Color(
                                                                              0xFFE0E0E0),
                                                                      inactiveThumbColor:
                                                                          Colors
                                                                              .white,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                SelectionArea(
                                                                    child: Text(
                                                                  'Map View',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyText1Family,
                                                                        fontSize:
                                                                            14,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                      ),
                                                                )),
                                                                Container(
                                                                  width: 65,
                                                                  height: 40,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color(
                                                                          0xFFE0E0E0),
                                                                    ),
                                                                  ),
                                                                  child: Switch(
                                                                    value: _model
                                                                            .mapviewValue ??=
                                                                        false,
                                                                    onChanged:
                                                                        (newValue) async {
                                                                      setState(() =>
                                                                          _model.mapviewValue =
                                                                              newValue!);
                                                                    },
                                                                    activeColor:
                                                                        Colors
                                                                            .white,
                                                                    activeTrackColor:
                                                                        Color(
                                                                            0xFF7AC5CD),
                                                                    inactiveTrackColor:
                                                                        Color(
                                                                            0xFFE0E0E0),
                                                                    inactiveThumbColor:
                                                                        Colors
                                                                            .white,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        if ((containerPropertiesRecordList
                                                    .length !=
                                                0) &&
                                            !_model.mapviewValue! &&
                                            !_model.trendingValue!)
                                          Expanded(
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                15, 0, 15, 10),
                                                    child: StreamBuilder<
                                                        List<PropertiesRecord>>(
                                                      stream:
                                                          queryPropertiesRecord(
                                                        queryBuilder: (propertiesRecord) =>
                                                            propertiesRecord.whereIn(
                                                                'uid',
                                                                containerPropertiesRecordList
                                                                    .map((e) =>
                                                                        e.uid)
                                                                    .withoutNulls
                                                                    .toList()),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50,
                                                              height: 50,
                                                              child:
                                                                  CircularProgressIndicator(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<PropertiesRecord>
                                                            columnPropertiesRecordList =
                                                            snapshot.data!;
                                                        return Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: List.generate(
                                                              columnPropertiesRecordList
                                                                  .length,
                                                              (columnIndex) {
                                                            final columnPropertiesRecord =
                                                                columnPropertiesRecordList[
                                                                    columnIndex];
                                                            return Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          10,
                                                                          0,
                                                                          0),
                                                              child: StreamBuilder<
                                                                  PropertiesRecord>(
                                                                stream: PropertiesRecord
                                                                    .getDocument(
                                                                        columnPropertiesRecord
                                                                            .reference),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            40,
                                                                        height:
                                                                            40,
                                                                        child:
                                                                            CircularProgressIndicator(
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  final rowPropertiesRecord =
                                                                      snapshot
                                                                          .data!;
                                                                  return InkWell(
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'P_L_P_NEW_COPY_PAGE_Row_t05krzrq_ON_TAP');
                                                                      logFirebaseEvent(
                                                                          'Row_navigate_to');

                                                                      context
                                                                          .pushNamed(
                                                                        'PDP_New',
                                                                        queryParams:
                                                                            {
                                                                          'propRef':
                                                                              serializeParam(
                                                                            rowPropertiesRecord.reference,
                                                                            ParamType.DocumentReference,
                                                                          ),
                                                                        }.withoutNulls,
                                                                      );
                                                                    },
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Stack(
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                                                                child: Container(
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(10),
                                                                                    border: Border.all(
                                                                                      color: Color(0xFFBCBCBC),
                                                                                      width: 1,
                                                                                    ),
                                                                                  ),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Container(
                                                                                              width: 66,
                                                                                              height: 66,
                                                                                              decoration: BoxDecoration(),
                                                                                              child: Stack(
                                                                                                children: [
                                                                                                  FlutterFlowStaticMap(
                                                                                                    location: functions.strToLatLng(rowPropertiesRecord.latitude, rowPropertiesRecord.longitude),
                                                                                                    apiKey: 'sk.eyJ1IjoibmFiZWVsMTUiLCJhIjoiY2w1cnJva2ppMDA2bTNkcDM2Y3JibHJqcyJ9.BKUjaiUaM_Bz70Pj6VkPyA',
                                                                                                    style: MapBoxStyle.Light,
                                                                                                    width: 66,
                                                                                                    height: 66,
                                                                                                    fit: BoxFit.cover,
                                                                                                    borderRadius: BorderRadius.circular(5),
                                                                                                    markerColor: FlutterFlowTheme.of(context).alternate,
                                                                                                    zoom: 10,
                                                                                                    tilt: 0,
                                                                                                    rotation: 0,
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                            Expanded(
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                                                child: Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                  children: [
                                                                                                    Text(
                                                                                                      rowPropertiesRecord.title!,
                                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                            fontWeight: FontWeight.normal,
                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                          ),
                                                                                                    ),
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                                                                                      child: Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                        children: [
                                                                                                          Row(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            children: [
                                                                                                              Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                                                                                                child: SelectionArea(
                                                                                                                    child: Text(
                                                                                                                  functions.format(rowPropertiesRecord.auctionReservePrice),
                                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                                        color: Color(0xFF8E8E8E),
                                                                                                                        fontSize: 14,
                                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                                      ),
                                                                                                                )),
                                                                                                              ),
                                                                                                              if (columnCarouselsRecord!.propertyId!.toList().contains(rowPropertiesRecord.propertyId))
                                                                                                                Padding(
                                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                                                                                                  child: SvgPicture.asset(
                                                                                                                    'assets/images/Hot_Icon.svg',
                                                                                                                    width: 20,
                                                                                                                    height: 20,
                                                                                                                    fit: BoxFit.cover,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              SvgPicture.asset(
                                                                                                                'assets/images/EOI_Icon.svg',
                                                                                                                width: 20,
                                                                                                                height: 20,
                                                                                                                fit: BoxFit.cover,
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                          Row(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            children: [
                                                                                                              FaIcon(
                                                                                                                FontAwesomeIcons.whatsapp,
                                                                                                                color: Color(0xFF66BB6A),
                                                                                                                size: 20,
                                                                                                              ),
                                                                                                              Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                                                                child: Icon(
                                                                                                                  Icons.share_sharp,
                                                                                                                  color: Color(0xFFA0A0A0),
                                                                                                                  size: 20,
                                                                                                                ),
                                                                                                              ),
                                                                                                              if (!containerUserRecord!.likedProperties!.toList().contains(rowPropertiesRecord.uid))
                                                                                                                Padding(
                                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                                                                  child: InkWell(
                                                                                                                    onTap: () async {
                                                                                                                      logFirebaseEvent('P_L_P_NEW_COPY_PAGE_Icon_bbb9conr_ON_TAP');
                                                                                                                      logFirebaseEvent('Icon_backend_call');

                                                                                                                      final userUpdateData = {
                                                                                                                        'liked_properties': FieldValue.arrayUnion([rowPropertiesRecord.uid]),
                                                                                                                      };
                                                                                                                      await containerUserRecord!.reference.update(userUpdateData);
                                                                                                                    },
                                                                                                                    child: Icon(
                                                                                                                      Icons.favorite_sharp,
                                                                                                                      color: Color(0xFFA0A0A0),
                                                                                                                      size: 20,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              if (containerUserRecord!.likedProperties!.toList().contains(rowPropertiesRecord.uid))
                                                                                                                Padding(
                                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(14, 0, 0, 0),
                                                                                                                  child: InkWell(
                                                                                                                    onTap: () async {
                                                                                                                      logFirebaseEvent('P_L_P_NEW_COPY_PAGE_Icon_gz86e5n7_ON_TAP');
                                                                                                                      logFirebaseEvent('Icon_backend_call');

                                                                                                                      final userUpdateData = {
                                                                                                                        'liked_properties': FieldValue.arrayRemove([rowPropertiesRecord.uid]),
                                                                                                                      };
                                                                                                                      await currentUserReference!.update(userUpdateData);
                                                                                                                    },
                                                                                                                    child: Icon(
                                                                                                                      Icons.favorite_sharp,
                                                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                                                      size: 20,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                                                                                        child: Container(
                                                                                          width: double.infinity,
                                                                                          height: 1,
                                                                                          decoration: BoxDecoration(
                                                                                            color: Color(0xFFE0E0E0),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Text(
                                                                                              'Auction Date:',
                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                    color: Color(0xFF8E8E8E),
                                                                                                    fontSize: 14,
                                                                                                    fontWeight: FontWeight.normal,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                  ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                                              child: Text(
                                                                                                valueOrDefault<String>(
                                                                                                  functions.formatDate(rowPropertiesRecord.auctionStartTime),
                                                                                                  'Open',
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                      fontSize: 14,
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Container(
                                                                                      decoration: BoxDecoration(
                                                                                        color: Colors.white,
                                                                                        borderRadius: BorderRadius.circular(5),
                                                                                        border: Border.all(
                                                                                          color: Color(0xFFBCBCBC),
                                                                                          width: 1,
                                                                                        ),
                                                                                      ),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(5, 4, 5, 4),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Text(
                                                                                              'Estimated Discount ',
                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                    color: Color(0xFF66BB6A),
                                                                                                    fontSize: 10,
                                                                                                    fontWeight: FontWeight.bold,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                  ),
                                                                                            ),
                                                                                            Text(
                                                                                              '${rowPropertiesRecord.auctionDiscount}%',
                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                    color: Color(0xFF66BB6A),
                                                                                                    fontSize: 10,
                                                                                                    fontWeight: FontWeight.bold,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Container(
                                                                                      decoration: BoxDecoration(
                                                                                        color: Colors.white,
                                                                                        borderRadius: BorderRadius.circular(5),
                                                                                        border: Border.all(
                                                                                          color: Color(0xFFBCBCBC),
                                                                                          width: 1,
                                                                                        ),
                                                                                      ),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(5, 4, 5, 4),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Text(
                                                                                              'Apply by ',
                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                    color: Color(0xFF4682B4),
                                                                                                    fontSize: 10,
                                                                                                    fontWeight: FontWeight.bold,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                  ),
                                                                                            ),
                                                                                            Text(
                                                                                              rowPropertiesRecord.applicationEndDate!,
                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                    color: Color(0xFF4682B4),
                                                                                                    fontSize: 10,
                                                                                                    fontWeight: FontWeight.bold,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  );
                                                                },
                                                              ),
                                                            );
                                                          }),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                15, 0, 15, 15),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        if (widget.pageNum != 1)
                                                          Expanded(
                                                            child: InkWell(
                                                              onTap: () async {
                                                                logFirebaseEvent(
                                                                    'P_L_P_NEW_COPY_PAGE_Text_d9v90a0j_ON_TAP');
                                                                logFirebaseEvent(
                                                                    'Text_navigate_to');

                                                                context
                                                                    .pushNamed(
                                                                  'PLP_New',
                                                                  queryParams: {
                                                                    'pageNum':
                                                                        serializeParam(
                                                                      functions.decreaseby1(
                                                                          widget
                                                                              .pageNum!),
                                                                      ParamType
                                                                          .int,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );
                                                              },
                                                              child: Text(
                                                                'Prev',
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1,
                                                              ),
                                                            ),
                                                          ),
                                                        if (widget.pageNum !=
                                                            functions.filterCopy2(
                                                                pLPNewCopyPropertiesRecordList
                                                                    .toList(),
                                                                (currentUserDocument
                                                                            ?.cities
                                                                            ?.toList() ??
                                                                        [])
                                                                    .toList(),
                                                                (currentUserDocument
                                                                            ?.propertyType
                                                                            ?.toList() ??
                                                                        [])
                                                                    .toList(),
                                                                valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.budgetTo,
                                                                    ''),
                                                                valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.budgetFrom,
                                                                    '')))
                                                          Expanded(
                                                            child: InkWell(
                                                              onTap: () async {
                                                                logFirebaseEvent(
                                                                    'P_L_P_NEW_COPY_PAGE_Text_svma6mgq_ON_TAP');
                                                                logFirebaseEvent(
                                                                    'Text_navigate_to');

                                                                context
                                                                    .pushNamed(
                                                                  'PLP_New',
                                                                  queryParams: {
                                                                    'pageNum':
                                                                        serializeParam(
                                                                      functions.increaseBy1(
                                                                          widget
                                                                              .pageNum!),
                                                                      ParamType
                                                                          .int,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );
                                                              },
                                                              child: Text(
                                                                'Next',
                                                                textAlign:
                                                                    TextAlign
                                                                        .end,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1,
                                                              ),
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        if (_model.trendingValue! &&
                                            !_model.mapviewValue!)
                                          Expanded(
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                15, 0, 15, 10),
                                                    child: StreamBuilder<
                                                        List<PropertiesRecord>>(
                                                      stream:
                                                          queryPropertiesRecord(
                                                        queryBuilder: (propertiesRecord) =>
                                                            propertiesRecord.whereIn(
                                                                'property_id',
                                                                columnCarouselsRecord!
                                                                    .propertyId!
                                                                    .toList()),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50,
                                                              height: 50,
                                                              child:
                                                                  CircularProgressIndicator(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<PropertiesRecord>
                                                            columnPropertiesRecordList =
                                                            snapshot.data!;
                                                        return Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: List.generate(
                                                              columnPropertiesRecordList
                                                                  .length,
                                                              (columnIndex) {
                                                            final columnPropertiesRecord =
                                                                columnPropertiesRecordList[
                                                                    columnIndex];
                                                            return Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          10,
                                                                          0,
                                                                          0),
                                                              child: StreamBuilder<
                                                                  PropertiesRecord>(
                                                                stream: PropertiesRecord
                                                                    .getDocument(
                                                                        columnPropertiesRecord
                                                                            .reference),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            40,
                                                                        height:
                                                                            40,
                                                                        child:
                                                                            CircularProgressIndicator(
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  final rowPropertiesRecord =
                                                                      snapshot
                                                                          .data!;
                                                                  return InkWell(
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'P_L_P_NEW_COPY_PAGE_Row_fbeoilwt_ON_TAP');
                                                                      logFirebaseEvent(
                                                                          'Row_navigate_to');

                                                                      context
                                                                          .pushNamed(
                                                                        'PDP_New',
                                                                        queryParams:
                                                                            {
                                                                          'propRef':
                                                                              serializeParam(
                                                                            rowPropertiesRecord.reference,
                                                                            ParamType.DocumentReference,
                                                                          ),
                                                                        }.withoutNulls,
                                                                      );
                                                                    },
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Stack(
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                                                                child: Container(
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(10),
                                                                                    border: Border.all(
                                                                                      color: Color(0xFFBCBCBC),
                                                                                      width: 1,
                                                                                    ),
                                                                                  ),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Container(
                                                                                              width: 66,
                                                                                              height: 66,
                                                                                              decoration: BoxDecoration(),
                                                                                              child: Stack(
                                                                                                children: [
                                                                                                  FlutterFlowStaticMap(
                                                                                                    location: functions.strToLatLng(rowPropertiesRecord.latitude, rowPropertiesRecord.longitude),
                                                                                                    apiKey: 'sk.eyJ1IjoibmFiZWVsMTUiLCJhIjoiY2w1cnJva2ppMDA2bTNkcDM2Y3JibHJqcyJ9.BKUjaiUaM_Bz70Pj6VkPyA',
                                                                                                    style: MapBoxStyle.Light,
                                                                                                    width: 66,
                                                                                                    height: 66,
                                                                                                    fit: BoxFit.cover,
                                                                                                    borderRadius: BorderRadius.circular(5),
                                                                                                    zoom: 15,
                                                                                                    tilt: 0,
                                                                                                    rotation: 0,
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                            Expanded(
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                                                child: Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                  children: [
                                                                                                    Text(
                                                                                                      rowPropertiesRecord.title!,
                                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                            fontWeight: FontWeight.normal,
                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                          ),
                                                                                                    ),
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                                                                                      child: Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                        children: [
                                                                                                          Row(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            children: [
                                                                                                              Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                                                                                                child: SelectionArea(
                                                                                                                    child: Text(
                                                                                                                  functions.format(rowPropertiesRecord.auctionReservePrice),
                                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                                        color: Color(0xFF8E8E8E),
                                                                                                                        fontSize: 14,
                                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                                      ),
                                                                                                                )),
                                                                                                              ),
                                                                                                              if (columnCarouselsRecord!.propertyId!.toList().contains(rowPropertiesRecord.propertyId))
                                                                                                                Padding(
                                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                                                                                                  child: SvgPicture.asset(
                                                                                                                    'assets/images/Hot_Icon.svg',
                                                                                                                    width: 20,
                                                                                                                    height: 20,
                                                                                                                    fit: BoxFit.cover,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              SvgPicture.asset(
                                                                                                                'assets/images/EOI_Icon.svg',
                                                                                                                width: 20,
                                                                                                                height: 20,
                                                                                                                fit: BoxFit.cover,
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                          Row(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            children: [
                                                                                                              FaIcon(
                                                                                                                FontAwesomeIcons.whatsapp,
                                                                                                                color: Color(0xFF66BB6A),
                                                                                                                size: 20,
                                                                                                              ),
                                                                                                              Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                                                                child: Icon(
                                                                                                                  Icons.share_sharp,
                                                                                                                  color: Color(0xFFA0A0A0),
                                                                                                                  size: 20,
                                                                                                                ),
                                                                                                              ),
                                                                                                              if (!containerUserRecord!.likedProperties!.toList().contains(rowPropertiesRecord.uid))
                                                                                                                Padding(
                                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                                                                  child: InkWell(
                                                                                                                    onTap: () async {
                                                                                                                      logFirebaseEvent('P_L_P_NEW_COPY_PAGE_Icon_uyv3wog0_ON_TAP');
                                                                                                                      logFirebaseEvent('Icon_backend_call');

                                                                                                                      final userUpdateData = {
                                                                                                                        'liked_properties': FieldValue.arrayUnion([rowPropertiesRecord.uid]),
                                                                                                                      };
                                                                                                                      await containerUserRecord!.reference.update(userUpdateData);
                                                                                                                    },
                                                                                                                    child: Icon(
                                                                                                                      Icons.favorite_sharp,
                                                                                                                      color: Color(0xFFA0A0A0),
                                                                                                                      size: 20,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              if (containerUserRecord!.likedProperties!.toList().contains(rowPropertiesRecord.uid))
                                                                                                                Padding(
                                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(14, 0, 0, 0),
                                                                                                                  child: InkWell(
                                                                                                                    onTap: () async {
                                                                                                                      logFirebaseEvent('P_L_P_NEW_COPY_PAGE_Icon_1o05i4nk_ON_TAP');
                                                                                                                      logFirebaseEvent('Icon_backend_call');

                                                                                                                      final userUpdateData = {
                                                                                                                        'liked_properties': FieldValue.arrayRemove([rowPropertiesRecord.uid]),
                                                                                                                      };
                                                                                                                      await currentUserReference!.update(userUpdateData);
                                                                                                                    },
                                                                                                                    child: Icon(
                                                                                                                      Icons.favorite_sharp,
                                                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                                                      size: 20,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                                                                                        child: Container(
                                                                                          width: double.infinity,
                                                                                          height: 1,
                                                                                          decoration: BoxDecoration(
                                                                                            color: Color(0xFFE0E0E0),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Text(
                                                                                              'Auction Date:',
                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                    color: Color(0xFF8E8E8E),
                                                                                                    fontSize: 14,
                                                                                                    fontWeight: FontWeight.normal,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                  ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                                              child: Text(
                                                                                                valueOrDefault<String>(
                                                                                                  functions.formatDate(rowPropertiesRecord.auctionStartTime),
                                                                                                  'Open',
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                      fontSize: 14,
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Container(
                                                                                      decoration: BoxDecoration(
                                                                                        color: Colors.white,
                                                                                        borderRadius: BorderRadius.circular(5),
                                                                                        border: Border.all(
                                                                                          color: Color(0xFFBCBCBC),
                                                                                          width: 1,
                                                                                        ),
                                                                                      ),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(5, 4, 5, 4),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Text(
                                                                                              'Estimated Discount ',
                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                    color: Color(0xFF66BB6A),
                                                                                                    fontSize: 10,
                                                                                                    fontWeight: FontWeight.bold,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                  ),
                                                                                            ),
                                                                                            Text(
                                                                                              '${rowPropertiesRecord.auctionDiscount}%',
                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                    color: Color(0xFF66BB6A),
                                                                                                    fontSize: 10,
                                                                                                    fontWeight: FontWeight.bold,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Container(
                                                                                      decoration: BoxDecoration(
                                                                                        color: Colors.white,
                                                                                        borderRadius: BorderRadius.circular(5),
                                                                                        border: Border.all(
                                                                                          color: Color(0xFFBCBCBC),
                                                                                          width: 1,
                                                                                        ),
                                                                                      ),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(5, 4, 5, 4),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Text(
                                                                                              'Apply by ',
                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                    color: Color(0xFF4682B4),
                                                                                                    fontSize: 10,
                                                                                                    fontWeight: FontWeight.bold,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                  ),
                                                                                            ),
                                                                                            Text(
                                                                                              rowPropertiesRecord.applicationEndDate!,
                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                    color: Color(0xFF4682B4),
                                                                                                    fontSize: 10,
                                                                                                    fontWeight: FontWeight.bold,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  );
                                                                },
                                                              ),
                                                            );
                                                          }),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        if ((containerPropertiesRecordList
                                                    .length ==
                                                0) &&
                                            !_model.mapviewValue! &&
                                            !_model.trendingValue!)
                                          Expanded(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .emptyRequirementsModel,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child:
                                                        EmptyRequirementsWidget(),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        if ((containerPropertiesRecordList
                                                    .length !=
                                                0) &&
                                            _model.mapviewValue! &&
                                            !_model.trendingValue!)
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: FlutterFlowGoogleMap(
                                                      controller: _model
                                                          .listingMapsController,
                                                      onCameraIdle: (latLng) =>
                                                          _model.listingMapsCenter =
                                                              latLng,
                                                      initialLocation: _model
                                                              .listingMapsCenter ??=
                                                          functions.returnFirstItem(
                                                              functions
                                                                  .listofLATLNGS(
                                                                      containerPropertiesRecordList
                                                                          .toList())
                                                                  .toList(),
                                                              _model.trendingPVController
                                                                      ?.page
                                                                      ?.round() ??
                                                                  0),
                                                      markers: functions
                                                          .listofLATLNGS(
                                                              containerPropertiesRecordList
                                                                  .toList())
                                                          .map(
                                                            (marker) =>
                                                                FlutterFlowMarker(
                                                              marker
                                                                  .serialize(),
                                                              marker,
                                                            ),
                                                          )
                                                          .toList(),
                                                      markerColor:
                                                          GoogleMarkerColor
                                                              .violet,
                                                      mapType: MapType.normal,
                                                      style: GoogleMapStyle
                                                          .standard,
                                                      initialZoom: 12,
                                                      allowInteraction: true,
                                                      allowZoom: true,
                                                      showZoomControls: true,
                                                      showLocation: true,
                                                      showCompass: false,
                                                      showMapToolbar: false,
                                                      showTraffic: false,
                                                      centerMapOnMarkerTap:
                                                          true,
                                                    ),
                                                  ),
                                                  Container(
                                                    width: double.infinity,
                                                    height: 150,
                                                    decoration: BoxDecoration(),
                                                    child: Builder(
                                                      builder: (context) {
                                                        final prop =
                                                            containerPropertiesRecordList
                                                                .map((e) =>
                                                                    e.reference)
                                                                .toList();
                                                        return Container(
                                                          width:
                                                              double.infinity,
                                                          height: 500,
                                                          child: Stack(
                                                            children: [
                                                              PageView.builder(
                                                                controller: _model
                                                                        .listingPVController ??=
                                                                    PageController(
                                                                        initialPage: min(
                                                                            0,
                                                                            prop.length -
                                                                                1)),
                                                                scrollDirection:
                                                                    Axis.horizontal,
                                                                itemCount:
                                                                    prop.length,
                                                                itemBuilder:
                                                                    (context,
                                                                        propIndex) {
                                                                  final propItem =
                                                                      prop[
                                                                          propIndex];
                                                                  return Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            25,
                                                                            0,
                                                                            25,
                                                                            10),
                                                                    child:
                                                                        Container(
                                                                      width: MediaQuery.of(context)
                                                                              .size
                                                                              .width *
                                                                          0.95,
                                                                      height:
                                                                          200,
                                                                      decoration:
                                                                          BoxDecoration(),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            10,
                                                                            0,
                                                                            0),
                                                                        child: StreamBuilder<
                                                                            PropertiesRecord>(
                                                                          stream:
                                                                              PropertiesRecord.getDocument(propItem),
                                                                          builder:
                                                                              (context, snapshot) {
                                                                            // Customize what your widget looks like when it's loading.
                                                                            if (!snapshot.hasData) {
                                                                              return Center(
                                                                                child: SizedBox(
                                                                                  width: 50,
                                                                                  height: 50,
                                                                                  child: CircularProgressIndicator(
                                                                                    color: FlutterFlowTheme.of(context).primaryColor,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            }
                                                                            final rowPropertiesRecord =
                                                                                snapshot.data!;
                                                                            return InkWell(
                                                                              onTap: () async {
                                                                                logFirebaseEvent('P_L_P_NEW_COPY_PAGE_Row_0nsfxmme_ON_TAP');
                                                                                logFirebaseEvent('Row_navigate_to');

                                                                                context.pushNamed(
                                                                                  'PDP_New',
                                                                                  queryParams: {
                                                                                    'propRef': serializeParam(
                                                                                      rowPropertiesRecord.reference,
                                                                                      ParamType.DocumentReference,
                                                                                    ),
                                                                                  }.withoutNulls,
                                                                                );
                                                                              },
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  Expanded(
                                                                                    child: Stack(
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                                                                          child: InkWell(
                                                                                            onTap: () async {
                                                                                              logFirebaseEvent('P_L_P_NEW_COPY_Container_y9zc5r3a_ON_TAP');
                                                                                              logFirebaseEvent('Container_navigate_to');

                                                                                              context.pushNamed(
                                                                                                'PDP_New',
                                                                                                queryParams: {
                                                                                                  'propRef': serializeParam(
                                                                                                    rowPropertiesRecord.reference,
                                                                                                    ParamType.DocumentReference,
                                                                                                  ),
                                                                                                }.withoutNulls,
                                                                                              );
                                                                                            },
                                                                                            child: Container(
                                                                                              decoration: BoxDecoration(
                                                                                                borderRadius: BorderRadius.circular(10),
                                                                                                border: Border.all(
                                                                                                  color: Color(0xFFBCBCBC),
                                                                                                  width: 1,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    Container(
                                                                                                      width: 66,
                                                                                                      height: 66,
                                                                                                      decoration: BoxDecoration(),
                                                                                                      child: Stack(
                                                                                                        children: [
                                                                                                          FlutterFlowStaticMap(
                                                                                                            location: functions.strToLatLng(rowPropertiesRecord.latitude, rowPropertiesRecord.longitude),
                                                                                                            apiKey: 'sk.eyJ1IjoibmFiZWVsMTUiLCJhIjoiY2w1cnJva2ppMDA2bTNkcDM2Y3JibHJqcyJ9.BKUjaiUaM_Bz70Pj6VkPyA',
                                                                                                            style: MapBoxStyle.Light,
                                                                                                            width: 66,
                                                                                                            height: 66,
                                                                                                            fit: BoxFit.cover,
                                                                                                            borderRadius: BorderRadius.circular(5),
                                                                                                            zoom: 15,
                                                                                                            tilt: 0,
                                                                                                            rotation: 0,
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                    Expanded(
                                                                                                      child: Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                                                        child: Column(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                          children: [
                                                                                                            Text(
                                                                                                              rowPropertiesRecord.title!,
                                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                                    fontWeight: FontWeight.normal,
                                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                                  ),
                                                                                                            ),
                                                                                                            Padding(
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                                                                                              child: Row(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                children: [
                                                                                                                  Text(
                                                                                                                    functions.format(rowPropertiesRecord.auctionReservePrice),
                                                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                                          color: Color(0xFF8E8E8E),
                                                                                                                          fontSize: 14,
                                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                  Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      Padding(
                                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 50, 0),
                                                                                                                        child: SvgPicture.asset(
                                                                                                                          'assets/images/Hot_Icon.svg',
                                                                                                                          width: 20,
                                                                                                                          height: 20,
                                                                                                                          fit: BoxFit.cover,
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                      FaIcon(
                                                                                                                        FontAwesomeIcons.whatsapp,
                                                                                                                        color: Color(0xFF66BB6A),
                                                                                                                        size: 20,
                                                                                                                      ),
                                                                                                                      Padding(
                                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                                                                        child: Icon(
                                                                                                                          Icons.share_sharp,
                                                                                                                          color: Color(0xFFA0A0A0),
                                                                                                                          size: 20,
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                      if (containerUserRecord!.likedProperties!.toList().contains(rowPropertiesRecord.uid))
                                                                                                                        Padding(
                                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                                                                          child: InkWell(
                                                                                                                            onTap: () async {
                                                                                                                              logFirebaseEvent('P_L_P_NEW_COPY_PAGE_Icon_c8s61i18_ON_TAP');
                                                                                                                              logFirebaseEvent('Icon_backend_call');

                                                                                                                              final userUpdateData = {
                                                                                                                                'liked_properties': FieldValue.arrayUnion([rowPropertiesRecord.uid]),
                                                                                                                              };
                                                                                                                              await containerUserRecord!.reference.update(userUpdateData);
                                                                                                                            },
                                                                                                                            child: Icon(
                                                                                                                              Icons.favorite_sharp,
                                                                                                                              color: Color(0xFFA0A0A0),
                                                                                                                              size: 20,
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      if (containerUserRecord!.likedProperties!.toList().contains(rowPropertiesRecord.uid))
                                                                                                                        Padding(
                                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(14, 0, 0, 0),
                                                                                                                          child: InkWell(
                                                                                                                            onTap: () async {
                                                                                                                              logFirebaseEvent('P_L_P_NEW_COPY_PAGE_Icon_4nsp0rlq_ON_TAP');
                                                                                                                              logFirebaseEvent('Icon_backend_call');

                                                                                                                              final userUpdateData = {
                                                                                                                                'liked_properties': FieldValue.arrayRemove([rowPropertiesRecord.uid]),
                                                                                                                              };
                                                                                                                              await containerUserRecord!.reference.update(userUpdateData);
                                                                                                                            },
                                                                                                                            child: Icon(
                                                                                                                              Icons.favorite_sharp,
                                                                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                                                                              size: 20,
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                ],
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                            children: [
                                                                                              Container(
                                                                                                decoration: BoxDecoration(
                                                                                                  color: Colors.white,
                                                                                                  borderRadius: BorderRadius.circular(5),
                                                                                                  border: Border.all(
                                                                                                    color: Color(0xFFBCBCBC),
                                                                                                    width: 1,
                                                                                                  ),
                                                                                                ),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5, 4, 5, 4),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Text(
                                                                                                        'Estimated Discount ',
                                                                                                        style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                              color: Color(0xFF66BB6A),
                                                                                                              fontSize: 10,
                                                                                                              fontWeight: FontWeight.bold,
                                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                            ),
                                                                                                      ),
                                                                                                      Text(
                                                                                                        '${rowPropertiesRecord.auctionDiscount}%',
                                                                                                        style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                              color: Color(0xFF66BB6A),
                                                                                                              fontSize: 10,
                                                                                                              fontWeight: FontWeight.bold,
                                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                            ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Container(
                                                                                                decoration: BoxDecoration(
                                                                                                  color: Colors.white,
                                                                                                  borderRadius: BorderRadius.circular(5),
                                                                                                  border: Border.all(
                                                                                                    color: Color(0xFFBCBCBC),
                                                                                                    width: 1,
                                                                                                  ),
                                                                                                ),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5, 4, 5, 4),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Text(
                                                                                                        'Apply by ',
                                                                                                        style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                              color: Color(0xFF4682B4),
                                                                                                              fontSize: 10,
                                                                                                              fontWeight: FontWeight.bold,
                                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                            ),
                                                                                                      ),
                                                                                                      Text(
                                                                                                        rowPropertiesRecord.applicationEndDate!,
                                                                                                        style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                              color: Color(0xFF4682B4),
                                                                                                              fontSize: 10,
                                                                                                              fontWeight: FontWeight.bold,
                                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                            ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            );
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0, 1),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          10),
                                                                  child: smooth_page_indicator
                                                                      .SmoothPageIndicator(
                                                                    controller: _model
                                                                            .listingPVController ??=
                                                                        PageController(
                                                                            initialPage:
                                                                                min(0, prop.length - 1)),
                                                                    count: prop
                                                                        .length,
                                                                    axisDirection:
                                                                        Axis.horizontal,
                                                                    onDotClicked:
                                                                        (i) {
                                                                      _model
                                                                          .listingPVController!
                                                                          .animateToPage(
                                                                        i,
                                                                        duration:
                                                                            Duration(milliseconds: 500),
                                                                        curve: Curves
                                                                            .ease,
                                                                      );
                                                                    },
                                                                    effect: smooth_page_indicator
                                                                        .ExpandingDotsEffect(
                                                                      expansionFactor:
                                                                          2,
                                                                      spacing:
                                                                          8,
                                                                      radius:
                                                                          16,
                                                                      dotWidth:
                                                                          8,
                                                                      dotHeight:
                                                                          8,
                                                                      dotColor:
                                                                          Color(
                                                                              0xFF9E9E9E),
                                                                      activeDotColor:
                                                                          Color(
                                                                              0xFF3F51B5),
                                                                      paintStyle:
                                                                          PaintingStyle
                                                                              .fill,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ).animateOnActionTrigger(
                                                          animationsMap[
                                                              'pageViewOnActionTriggerAnimation']!,
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        if (_model.trendingValue! &&
                                            _model.mapviewValue!)
                                          Expanded(
                                            child: StreamBuilder<
                                                List<PropertiesRecord>>(
                                              stream: queryPropertiesRecord(
                                                queryBuilder: (propertiesRecord) =>
                                                    propertiesRecord.whereIn(
                                                        'property_id',
                                                        columnCarouselsRecord!
                                                            .propertyId!
                                                            .toList()),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50,
                                                      height: 50,
                                                      child:
                                                          CircularProgressIndicator(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<PropertiesRecord>
                                                    trendingMapPropertiesRecordList =
                                                    snapshot.data!;
                                                return Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child:
                                                            FlutterFlowGoogleMap(
                                                          controller: _model
                                                              .trendMapsController,
                                                          onCameraIdle:
                                                              (latLng) => _model
                                                                      .trendMapsCenter =
                                                                  latLng,
                                                          initialLocation: _model
                                                                  .trendMapsCenter ??=
                                                              functions.returnFirstItem(
                                                                  functions
                                                                      .listofLATLNGS(
                                                                          trendingMapPropertiesRecordList
                                                                              .toList())
                                                                      .toList(),
                                                                  _model.trendingPVController
                                                                          ?.page
                                                                          ?.round() ??
                                                                      0),
                                                          markers: functions
                                                              .listofLATLNGS(
                                                                  trendingMapPropertiesRecordList
                                                                      .toList())
                                                              .map(
                                                                (marker) =>
                                                                    FlutterFlowMarker(
                                                                  marker
                                                                      .serialize(),
                                                                  marker,
                                                                ),
                                                              )
                                                              .toList(),
                                                          markerColor:
                                                              GoogleMarkerColor
                                                                  .violet,
                                                          mapType:
                                                              MapType.normal,
                                                          style: GoogleMapStyle
                                                              .standard,
                                                          initialZoom: 12,
                                                          allowInteraction:
                                                              true,
                                                          allowZoom: true,
                                                          showZoomControls:
                                                              true,
                                                          showLocation: true,
                                                          showCompass: false,
                                                          showMapToolbar: false,
                                                          showTraffic: false,
                                                          centerMapOnMarkerTap:
                                                              true,
                                                        ),
                                                      ),
                                                      Container(
                                                        width: double.infinity,
                                                        height: 150,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Builder(
                                                          builder: (context) {
                                                            final prop =
                                                                trendingMapPropertiesRecordList
                                                                    .map((e) =>
                                                                        e.reference)
                                                                    .toList();
                                                            return Container(
                                                              width: double
                                                                  .infinity,
                                                              height: 500,
                                                              child: Stack(
                                                                children: [
                                                                  PageView
                                                                      .builder(
                                                                    controller: _model
                                                                            .trendingPVController ??=
                                                                        PageController(
                                                                            initialPage:
                                                                                min(0, prop.length - 1)),
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    itemCount: prop
                                                                        .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            propIndex) {
                                                                      final propItem =
                                                                          prop[
                                                                              propIndex];
                                                                      return Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            25,
                                                                            0,
                                                                            25,
                                                                            10),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              MediaQuery.of(context).size.width * 0.95,
                                                                          height:
                                                                              200,
                                                                          decoration:
                                                                              BoxDecoration(),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0,
                                                                                10,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                StreamBuilder<PropertiesRecord>(
                                                                              stream: PropertiesRecord.getDocument(propItem),
                                                                              builder: (context, snapshot) {
                                                                                // Customize what your widget looks like when it's loading.
                                                                                if (!snapshot.hasData) {
                                                                                  return Center(
                                                                                    child: SizedBox(
                                                                                      width: 50,
                                                                                      height: 50,
                                                                                      child: CircularProgressIndicator(
                                                                                        color: FlutterFlowTheme.of(context).primaryColor,
                                                                                      ),
                                                                                    ),
                                                                                  );
                                                                                }
                                                                                final rowPropertiesRecord = snapshot.data!;
                                                                                return InkWell(
                                                                                  onTap: () async {
                                                                                    logFirebaseEvent('P_L_P_NEW_COPY_PAGE_Row_d4vpuqi1_ON_TAP');
                                                                                    logFirebaseEvent('Row_navigate_to');

                                                                                    context.pushNamed(
                                                                                      'PDP_New',
                                                                                      queryParams: {
                                                                                        'propRef': serializeParam(
                                                                                          rowPropertiesRecord.reference,
                                                                                          ParamType.DocumentReference,
                                                                                        ),
                                                                                      }.withoutNulls,
                                                                                    );
                                                                                  },
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                    children: [
                                                                                      Expanded(
                                                                                        child: Stack(
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                                                                              child: InkWell(
                                                                                                onTap: () async {
                                                                                                  logFirebaseEvent('P_L_P_NEW_COPY_Container_w4uz7f5e_ON_TAP');
                                                                                                  logFirebaseEvent('Container_navigate_to');

                                                                                                  context.pushNamed(
                                                                                                    'PDP_New',
                                                                                                    queryParams: {
                                                                                                      'propRef': serializeParam(
                                                                                                        rowPropertiesRecord.reference,
                                                                                                        ParamType.DocumentReference,
                                                                                                      ),
                                                                                                    }.withoutNulls,
                                                                                                  );
                                                                                                },
                                                                                                child: Container(
                                                                                                  decoration: BoxDecoration(
                                                                                                    borderRadius: BorderRadius.circular(10),
                                                                                                    border: Border.all(
                                                                                                      color: Color(0xFFBCBCBC),
                                                                                                      width: 1,
                                                                                                    ),
                                                                                                  ),
                                                                                                  child: Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Container(
                                                                                                          width: 66,
                                                                                                          height: 66,
                                                                                                          decoration: BoxDecoration(),
                                                                                                          child: Stack(
                                                                                                            children: [
                                                                                                              FlutterFlowStaticMap(
                                                                                                                location: functions.strToLatLng(rowPropertiesRecord.latitude, rowPropertiesRecord.longitude),
                                                                                                                apiKey: 'sk.eyJ1IjoibmFiZWVsMTUiLCJhIjoiY2w1cnJva2ppMDA2bTNkcDM2Y3JibHJqcyJ9.BKUjaiUaM_Bz70Pj6VkPyA',
                                                                                                                style: MapBoxStyle.Light,
                                                                                                                width: 66,
                                                                                                                height: 66,
                                                                                                                fit: BoxFit.cover,
                                                                                                                borderRadius: BorderRadius.circular(5),
                                                                                                                zoom: 15,
                                                                                                                tilt: 0,
                                                                                                                rotation: 0,
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ),
                                                                                                        Expanded(
                                                                                                          child: Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                                                            child: Column(
                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                              children: [
                                                                                                                Text(
                                                                                                                  rowPropertiesRecord.title!,
                                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                                        fontWeight: FontWeight.normal,
                                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                                      ),
                                                                                                                ),
                                                                                                                Padding(
                                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                                                                                                  child: Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                    children: [
                                                                                                                      Text(
                                                                                                                        functions.format(rowPropertiesRecord.auctionReservePrice),
                                                                                                                        style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                                              color: Color(0xFF8E8E8E),
                                                                                                                              fontSize: 14,
                                                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                      Row(
                                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                                        children: [
                                                                                                                          Padding(
                                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 50, 0),
                                                                                                                            child: SvgPicture.asset(
                                                                                                                              'assets/images/Hot_Icon.svg',
                                                                                                                              width: 20,
                                                                                                                              height: 20,
                                                                                                                              fit: BoxFit.cover,
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                          FaIcon(
                                                                                                                            FontAwesomeIcons.whatsapp,
                                                                                                                            color: Color(0xFF66BB6A),
                                                                                                                            size: 20,
                                                                                                                          ),
                                                                                                                          Padding(
                                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                                                                            child: Icon(
                                                                                                                              Icons.share_sharp,
                                                                                                                              color: Color(0xFFA0A0A0),
                                                                                                                              size: 20,
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                          if (containerUserRecord!.likedProperties!.toList().contains(rowPropertiesRecord.uid))
                                                                                                                            Padding(
                                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                                                                              child: InkWell(
                                                                                                                                onTap: () async {
                                                                                                                                  logFirebaseEvent('P_L_P_NEW_COPY_PAGE_Icon_fzbr40vp_ON_TAP');
                                                                                                                                  logFirebaseEvent('Icon_backend_call');

                                                                                                                                  final userUpdateData = {
                                                                                                                                    'liked_properties': FieldValue.arrayUnion([rowPropertiesRecord.uid]),
                                                                                                                                  };
                                                                                                                                  await containerUserRecord!.reference.update(userUpdateData);
                                                                                                                                },
                                                                                                                                child: Icon(
                                                                                                                                  Icons.favorite_sharp,
                                                                                                                                  color: Color(0xFFA0A0A0),
                                                                                                                                  size: 20,
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          if (containerUserRecord!.likedProperties!.toList().contains(rowPropertiesRecord.uid))
                                                                                                                            Padding(
                                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(14, 0, 0, 0),
                                                                                                                              child: InkWell(
                                                                                                                                onTap: () async {
                                                                                                                                  logFirebaseEvent('P_L_P_NEW_COPY_PAGE_Icon_m76yi196_ON_TAP');
                                                                                                                                  logFirebaseEvent('Icon_backend_call');

                                                                                                                                  final userUpdateData = {
                                                                                                                                    'liked_properties': FieldValue.arrayRemove([rowPropertiesRecord.uid]),
                                                                                                                                  };
                                                                                                                                  await containerUserRecord!.reference.update(userUpdateData);
                                                                                                                                },
                                                                                                                                child: Icon(
                                                                                                                                  Icons.favorite_sharp,
                                                                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                                                                  size: 20,
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                        ],
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                children: [
                                                                                                  Container(
                                                                                                    decoration: BoxDecoration(
                                                                                                      color: Colors.white,
                                                                                                      borderRadius: BorderRadius.circular(5),
                                                                                                      border: Border.all(
                                                                                                        color: Color(0xFFBCBCBC),
                                                                                                        width: 1,
                                                                                                      ),
                                                                                                    ),
                                                                                                    child: Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(5, 4, 5, 4),
                                                                                                      child: Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          Text(
                                                                                                            'Estimated Discount ',
                                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                                  color: Color(0xFF66BB6A),
                                                                                                                  fontSize: 10,
                                                                                                                  fontWeight: FontWeight.bold,
                                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                                ),
                                                                                                          ),
                                                                                                          Text(
                                                                                                            '${rowPropertiesRecord.auctionDiscount}%',
                                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                                  color: Color(0xFF66BB6A),
                                                                                                                  fontSize: 10,
                                                                                                                  fontWeight: FontWeight.bold,
                                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                                ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Container(
                                                                                                    decoration: BoxDecoration(
                                                                                                      color: Colors.white,
                                                                                                      borderRadius: BorderRadius.circular(5),
                                                                                                      border: Border.all(
                                                                                                        color: Color(0xFFBCBCBC),
                                                                                                        width: 1,
                                                                                                      ),
                                                                                                    ),
                                                                                                    child: Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(5, 4, 5, 4),
                                                                                                      child: Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          Text(
                                                                                                            'Apply by ',
                                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                                  color: Color(0xFF4682B4),
                                                                                                                  fontSize: 10,
                                                                                                                  fontWeight: FontWeight.bold,
                                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                                ),
                                                                                                          ),
                                                                                                          Text(
                                                                                                            rowPropertiesRecord.applicationEndDate!,
                                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                                  color: Color(0xFF4682B4),
                                                                                                                  fontSize: 10,
                                                                                                                  fontWeight: FontWeight.bold,
                                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                                ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ).animateOnActionTrigger(
                                                                        animationsMap[
                                                                            'placeholderWidgetOnActionTriggerAnimation']!,
                                                                      );
                                                                    },
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0,
                                                                            1),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              0,
                                                                              0,
                                                                              10),
                                                                      child: smooth_page_indicator
                                                                          .SmoothPageIndicator(
                                                                        controller:
                                                                            _model.trendingPVController ??=
                                                                                PageController(initialPage: min(0, prop.length - 1)),
                                                                        count: prop
                                                                            .length,
                                                                        axisDirection:
                                                                            Axis.horizontal,
                                                                        onDotClicked:
                                                                            (i) {
                                                                          _model
                                                                              .trendingPVController!
                                                                              .animateToPage(
                                                                            i,
                                                                            duration:
                                                                                Duration(milliseconds: 500),
                                                                            curve:
                                                                                Curves.ease,
                                                                          );
                                                                        },
                                                                        effect:
                                                                            smooth_page_indicator.ExpandingDotsEffect(
                                                                          expansionFactor:
                                                                              2,
                                                                          spacing:
                                                                              8,
                                                                          radius:
                                                                              16,
                                                                          dotWidth:
                                                                              8,
                                                                          dotHeight:
                                                                              8,
                                                                          dotColor:
                                                                              Color(0xFF9E9E9E),
                                                                          activeDotColor:
                                                                              Color(0xFF3F51B5),
                                                                          paintStyle:
                                                                              PaintingStyle.fill,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            wrapWithModel(
                                              model: _model.bottomNavPropModel,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: BottomNavPropWidget(),
                                            ),
                                          ],
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ));
      },
    );
  }
}
