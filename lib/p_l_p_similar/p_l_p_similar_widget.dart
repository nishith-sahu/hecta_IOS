import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/bottom_nav_grey_widget.dart';
import '../components/empty_requirements_widget.dart';
import '../components/empty_trending_widget.dart';
import '../components/loader_widget.dart';
import '../flutter_flow/flutter_flow_static_map.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/lat_lng.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mapbox_search/mapbox_search.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'p_l_p_similar_model.dart';
export 'p_l_p_similar_model.dart';

class PLPSimilarWidget extends StatefulWidget {
  const PLPSimilarWidget({
    Key? key,
    this.pageNum,
    this.carousels,
    this.title,
    this.city,
    this.propType,
    this.trending,
  }) : super(key: key);

  final int? pageNum;
  final bool? carousels;
  final String? title;
  final String? city;
  final String? propType;
  final bool? trending;

  @override
  _PLPSimilarWidgetState createState() => _PLPSimilarWidgetState();
}

class _PLPSimilarWidgetState extends State<PLPSimilarWidget> {
  late PLPSimilarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PLPSimilarModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'PLP_Similar'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('P_L_P_SIMILAR_PLP_Similar_ON_LOAD');
      if (!FFAppState().filterAppliedSimilar) {
        logFirebaseEvent('PLP_Similar_update_app_state');
        FFAppState().update(() {
          FFAppState().filterCity = functions.returnEmptyList().toList();
          FFAppState().filterType = functions.returnEmptyList().toList();
          FFAppState().filterArea = functions.returnEmptyList().toList();
          FFAppState().filterState = functions.returnEmptyList().toList();
          FFAppState().filterBanks = functions.returnEmptyList().toList();
          FFAppState().filterMaxBudget = '1000Cr+';
          FFAppState().filterMinBudget = '0';
          FFAppState().filterPrivateTreaty = false;
        });
        logFirebaseEvent('PLP_Similar_update_app_state');
        FFAppState().update(() {
          FFAppState().filterAppDateStart = getCurrentTimestamp;
          FFAppState().filterAppDateEnd = getCurrentTimestamp;
          FFAppState().filterAucDateStart = getCurrentTimestamp;
          FFAppState().filterAucDateEnd = getCurrentTimestamp;
          FFAppState().filterallowOpen = true;
        });
      }
      if (functions.filterONorOFF(
          functions.applydateFilter(FFAppState().filterAucDateStart!,
              FFAppState().filterAucDateEnd!, getCurrentTimestamp),
          functions.applydateFilter(FFAppState().filterAppDateStart!,
              FFAppState().filterAppDateEnd!, getCurrentTimestamp),
          FFAppState().filterState.toList(),
          FFAppState().filterCity.toList(),
          FFAppState().filterArea.toList(),
          FFAppState().filterMaxBudget,
          FFAppState().filterMinBudget,
          FFAppState().filterType.toList(),
          FFAppState().filterBanks.toList(),
          FFAppState().filterPrivateTreaty)) {
        logFirebaseEvent('PLP_Similar_update_app_state');
        setState(() {
          FFAppState().filterAppliedSimilar = true;
        });
      }
    });

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
      stream: queryPropertiesRecord(
        queryBuilder: (propertiesRecord) => propertiesRecord
            .where('city', isEqualTo: widget.city)
            .where('product_categories', isEqualTo: widget.propType),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: LoaderWidget(),
          );
        }
        List<PropertiesRecord> pLPSimilarPropertiesRecordList = snapshot.data!;
        return Title(
            title: 'PLP_Similar',
            color: FlutterFlowTheme.of(context).primaryColor,
            child: Scaffold(
              key: scaffoldKey,
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
                          child: LoaderWidget(),
                        );
                      }
                      List<UserRecord> containerUserRecordList = snapshot.data!;
                      final containerUserRecord =
                          containerUserRecordList.isNotEmpty
                              ? containerUserRecordList.first
                              : null;
                      return Container(
                        decoration: BoxDecoration(),
                        child: Container(
                          decoration: BoxDecoration(),
                          child: StreamBuilder<List<CarouselsRecord>>(
                            stream: queryCarouselsRecord(
                              queryBuilder: (carouselsRecord) => carouselsRecord
                                  .where('title', isEqualTo: 'Hot Property'),
                              singleRecord: true,
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: LoaderWidget(),
                                );
                              }
                              List<CarouselsRecord> columnCarouselsRecordList =
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
                                        width:
                                            MediaQuery.of(context).size.width,
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
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15, 10, 0, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  InkWell(
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'P_L_P_SIMILAR_PAGE_Stack_ss92d9y6_ON_TAP');
                                                      logFirebaseEvent(
                                                          'Stack_navigate_to');

                                                      context
                                                          .pushNamed('Menubar');
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
                                                              AuthUserStreamWidget(
                                                                builder:
                                                                    (context) =>
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
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            12,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      15, 0, 0),
                                                          child: Container(
                                                            width: 12,
                                                            height: 12,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFF4F4F4),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50),
                                                            ),
                                                            child: Icon(
                                                              Icons.menu_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
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
                                                                  15, 0, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Container(
                                                            width: 75,
                                                            height: 20,
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: SvgPicture
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
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            15,
                                                                            0),
                                                                child: InkWell(
                                                                  onTap:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'P_L_P_SIMILAR_PAGE_Icon_3xkl7f75_ON_TAP');
                                                                    logFirebaseEvent(
                                                                        'Icon_navigate_to');

                                                                    context.pushNamed(
                                                                        'Search_ScreenNew');
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .search_sharp,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryColor,
                                                                    size: 24,
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            15,
                                                                            0),
                                                                child: InkWell(
                                                                  onTap:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'P_L_P_SIMILAR_PAGE_Icon_05r47ty2_ON_TAP');
                                                                    logFirebaseEvent(
                                                                        'Icon_navigate_to');

                                                                    context.pushNamed(
                                                                        'social');
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .alternate_email_sharp,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    size: 24,
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Padding(
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
                                                                          'P_L_P_SIMILAR_PAGE_Icon_q3vmaldp_ON_TAP');
                                                                      if (functions
                                                                              .mapLength(containerUserRecord!.cart!.toList())
                                                                              .toString() !=
                                                                          '0') {
                                                                        logFirebaseEvent(
                                                                            'Icon_navigate_to');

                                                                        context.pushNamed(
                                                                            'cart_Screen1_new');
                                                                      } else {
                                                                        logFirebaseEvent(
                                                                            'Icon_navigate_to');

                                                                        context.pushNamed(
                                                                            'cart_screen_empty');
                                                                      }
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .shopping_cart_sharp,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      size: 24,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            15,
                                                                            0),
                                                                child: InkWell(
                                                                  onTap:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'P_L_P_SIMILAR_PAGE_Icon_9q96wzsb_ON_TAP');
                                                                    logFirebaseEvent(
                                                                        'Icon_navigate_to');

                                                                    context.pushNamed(
                                                                        'Notifications_page');
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .notifications_sharp,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    size: 24,
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
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                39, 0, 0, 0),
                                                    child: Text(
                                                      'Bank se... Hecta pe!',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 15, 15, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    if (!FFAppState()
                                                        .filterAppliedSimilar)
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 0,
                                                                    10, 0),
                                                        child: InkWell(
                                                          onTap: () async {
                                                            logFirebaseEvent(
                                                                'P_L_P_SIMILAR_PAGE_Icon_18xg2chm_ON_TAP');
                                                            logFirebaseEvent(
                                                                'Icon_navigate_to');

                                                            context.pushNamed(
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
                                                                  pLPSimilarPropertiesRecordList,
                                                                  ParamType
                                                                      .Document,
                                                                  true,
                                                                ),
                                                                'carousels':
                                                                    serializeParam(
                                                                  false,
                                                                  ParamType
                                                                      .bool,
                                                                ),
                                                                'main':
                                                                    serializeParam(
                                                                  false,
                                                                  ParamType
                                                                      .bool,
                                                                ),
                                                                'fav':
                                                                    serializeParam(
                                                                  false,
                                                                  ParamType
                                                                      .bool,
                                                                ),
                                                                'eoi':
                                                                    serializeParam(
                                                                  false,
                                                                  ParamType
                                                                      .bool,
                                                                ),
                                                                'trending':
                                                                    serializeParam(
                                                                  _model
                                                                      .trendingValue,
                                                                  ParamType
                                                                      .bool,
                                                                ),
                                                                'similar':
                                                                    serializeParam(
                                                                  true,
                                                                  ParamType
                                                                      .bool,
                                                                ),
                                                              }.withoutNulls,
                                                              extra: <String,
                                                                  dynamic>{
                                                                'props':
                                                                    pLPSimilarPropertiesRecordList,
                                                              },
                                                            );
                                                          },
                                                          child: Icon(
                                                            Icons.tune_sharp,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor,
                                                            size: 28,
                                                          ),
                                                        ),
                                                      ),
                                                    if (FFAppState()
                                                        .filterAppliedSimilar)
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 0,
                                                                    10, 0),
                                                        child: InkWell(
                                                          onTap: () async {
                                                            logFirebaseEvent(
                                                                'P_L_P_SIMILAR_PAGE_Image_0tbm4u9j_ON_TAP');
                                                            logFirebaseEvent(
                                                                'Image_navigate_to');

                                                            context.pushNamed(
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
                                                                  pLPSimilarPropertiesRecordList,
                                                                  ParamType
                                                                      .Document,
                                                                  true,
                                                                ),
                                                                'carousels':
                                                                    serializeParam(
                                                                  false,
                                                                  ParamType
                                                                      .bool,
                                                                ),
                                                                'main':
                                                                    serializeParam(
                                                                  false,
                                                                  ParamType
                                                                      .bool,
                                                                ),
                                                                'fav':
                                                                    serializeParam(
                                                                  false,
                                                                  ParamType
                                                                      .bool,
                                                                ),
                                                                'eoi':
                                                                    serializeParam(
                                                                  false,
                                                                  ParamType
                                                                      .bool,
                                                                ),
                                                                'trending':
                                                                    serializeParam(
                                                                  _model
                                                                      .trendingValue,
                                                                  ParamType
                                                                      .bool,
                                                                ),
                                                                'similar':
                                                                    serializeParam(
                                                                  true,
                                                                  ParamType
                                                                      .bool,
                                                                ),
                                                                'searchkeyword':
                                                                    serializeParam(
                                                                  '',
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'carouselsTitle':
                                                                    serializeParam(
                                                                  '',
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'similarCity':
                                                                    serializeParam(
                                                                  widget.city,
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'similarType':
                                                                    serializeParam(
                                                                  widget
                                                                      .propType,
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                              }.withoutNulls,
                                                              extra: <String,
                                                                  dynamic>{
                                                                'props':
                                                                    pLPSimilarPropertiesRecordList,
                                                              },
                                                            );
                                                          },
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/images/Group_90.svg',
                                                            width: 29,
                                                            height: 29,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(10, 0,
                                                                    0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Container(
                                                              width: 135,
                                                              height: 30,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20),
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                                ),
                                                              ),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    child: SelectionArea(
                                                                        child: Text(
                                                                      'Premium',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyText1Family,
                                                                            fontSize:
                                                                                16,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                          ),
                                                                    )),
                                                                  ),
                                                                  Switch(
                                                                    value: _model
                                                                            .trendingValue ??=
                                                                        widget
                                                                            .trending!,
                                                                    onChanged:
                                                                        (newValue) async {
                                                                      setState(() =>
                                                                          _model.trendingValue =
                                                                              newValue!);
                                                                    },
                                                                    activeColor:
                                                                        Color(
                                                                            0xFFD0D0D0),
                                                                    activeTrackColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                    inactiveTrackColor:
                                                                        Color(
                                                                            0xFFE0E0E0),
                                                                    inactiveThumbColor:
                                                                        Color(
                                                                            0xFFD0D0D0),
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
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 10, 15, 0),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 1,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFE0E0E0),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15, 10, 15, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Similar Properties in ${widget.city}',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ],
                                    ),
                                  ),
                                  if (!_model.trendingValue!)
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15, 0, 15, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 10, 0, 0),
                                                child: Container(
                                                  decoration: BoxDecoration(),
                                                  child: Builder(
                                                    builder: (context) {
                                                      final ref =
                                                          pLPSimilarPropertiesRecordList
                                                              .where((e) =>
                                                                  functions.filterplace(
                                                                      FFAppState()
                                                                          .filterArea
                                                                          .toList(),
                                                                      FFAppState()
                                                                          .filterCity
                                                                          .toList(),
                                                                      e.city,
                                                                      e
                                                                          .location,
                                                                      FFAppState()
                                                                          .filterState
                                                                          .toList(),
                                                                      e
                                                                          .state!)! &&
                                                                  functions.typesfunc(
                                                                      FFAppState()
                                                                          .filterType
                                                                          .toList(),
                                                                      e
                                                                          .productCategories)! &&
                                                                  functions.banksfunc(
                                                                      FFAppState()
                                                                          .filterBanks
                                                                          .toList(),
                                                                      e
                                                                          .institutionName)! &&
                                                                  valueOrDefault<
                                                                      bool>(
                                                                    FFAppState().filterPrivateTreaty ==
                                                                            true
                                                                        ? (e.auctionStartTime == null ||
                                                                                e.auctionStartTime == ''
                                                                            ? true
                                                                            : false)
                                                                        : true,
                                                                    true,
                                                                  ) &&
                                                                  () {
                                                                    if ((functions.applydateFilter(FFAppState().filterAppDateStart!, FFAppState().filterAppDateEnd!, getCurrentTimestamp) ==
                                                                            true) &&
                                                                        functions.calendarDatesAfter(
                                                                            FFAppState()
                                                                                .filterAppDateStart!,
                                                                            e
                                                                                .applicationEndDate!)! &&
                                                                        functions.calendarDatesBefore(
                                                                            FFAppState().filterAppDateEnd!,
                                                                            e.applicationEndDate!)!) {
                                                                      return true;
                                                                    } else if (functions.applydateFilter(
                                                                            FFAppState().filterAppDateStart!,
                                                                            FFAppState().filterAppDateEnd!,
                                                                            getCurrentTimestamp) ==
                                                                        false) {
                                                                      return true;
                                                                    } else {
                                                                      return false;
                                                                    }
                                                                  }() &&
                                                                  () {
                                                                    if ((functions.applydateFilter(FFAppState().filterAucDateStart!, FFAppState().filterAucDateEnd!, getCurrentTimestamp) ==
                                                                            true) &&
                                                                        functions.calendarDatesAfter(
                                                                            FFAppState()
                                                                                .filterAucDateStart!,
                                                                            e
                                                                                .auctionStartTime!)! &&
                                                                        functions.calendarDatesBefore(
                                                                            FFAppState().filterAucDateEnd!,
                                                                            e.auctionStartTime!)!) {
                                                                      return true;
                                                                    } else if (functions.applydateFilter(
                                                                            FFAppState().filterAucDateStart!,
                                                                            FFAppState().filterAucDateEnd!,
                                                                            getCurrentTimestamp) ==
                                                                        false) {
                                                                      return true;
                                                                    } else {
                                                                      return false;
                                                                    }
                                                                  }() &&
                                                                  ((e.auctionReservePrice! >=
                                                                          functions.returnPrice(FFAppState()
                                                                              .filterMinBudget)!) &&
                                                                      (e.auctionReservePrice! <=
                                                                          functions.returnPrice(FFAppState()
                                                                              .filterMaxBudget)!)))
                                                              .toList()
                                                              .map((e) =>
                                                                  e.reference)
                                                              .toList();
                                                      if (ref.isEmpty) {
                                                        return EmptyRequirementsWidget();
                                                      }
                                                      return ListView.builder(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount: ref.length,
                                                        itemBuilder: (context,
                                                            refIndex) {
                                                          final refItem =
                                                              ref[refIndex];
                                                          return Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        10),
                                                            child: Container(
                                                              height: 177,
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: StreamBuilder<
                                                                  PropertiesRecord>(
                                                                stream: PropertiesRecord
                                                                    .getDocument(
                                                                        refItem),
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
                                                                          'P_L_P_SIMILAR_PAGE_Row_swc5fldr_ON_TAP');
                                                                      logFirebaseEvent(
                                                                          'Row_navigate_to');

                                                                      context
                                                                          .pushNamed(
                                                                        'PDP_New',
                                                                        queryParams:
                                                                            {
                                                                          'propRef':
                                                                              serializeParam(
                                                                            refItem,
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
                                                                                  height: 167,
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
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(8, 20, 8, 8),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Container(
                                                                                              width: 76,
                                                                                              height: 76,
                                                                                              decoration: BoxDecoration(),
                                                                                              child: Stack(
                                                                                                children: [
                                                                                                  FlutterFlowStaticMap(
                                                                                                    location: functions.strToLatLng(rowPropertiesRecord.latitude, rowPropertiesRecord.longitude),
                                                                                                    apiKey: 'pk.eyJ1IjoiaGVjdGFkZXYiLCJhIjoiY2xkd3dnNng0MGJ2YzNxcGtrNGk3M3M2NyJ9.BnhxpExhiPp8nNwDs5nJYg',
                                                                                                    style: MapBoxStyle.Streets,
                                                                                                    width: 76,
                                                                                                    height: 76,
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
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                                                                                child: Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                  children: [
                                                                                                    Text(
                                                                                                      '${rowPropertiesRecord.title}, ${rowPropertiesRecord.state}',
                                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                            fontSize: () {
                                                                                                              if (MediaQuery.of(context).size.width >= 375.0) {
                                                                                                                return 16.0;
                                                                                                              } else if ((MediaQuery.of(context).size.width < 375.0) && (MediaQuery.of(context).size.width >= 345.0)) {
                                                                                                                return 15.0;
                                                                                                              } else if ((MediaQuery.of(context).size.width < 345.0) && (MediaQuery.of(context).size.width >= 300.0)) {
                                                                                                                return 14.0;
                                                                                                              } else {
                                                                                                                return 13.0;
                                                                                                              }
                                                                                                            }(),
                                                                                                            fontWeight: FontWeight.normal,
                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                          ),
                                                                                                    ),
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
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
                                                                                                                  (rowPropertiesRecord.auctionReservePrice == 0) || (rowPropertiesRecord.auctionReservePrice == null)
                                                                                                                      ? 'N/A'
                                                                                                                      : valueOrDefault<String>(
                                                                                                                          functions.format(rowPropertiesRecord.auctionReservePrice),
                                                                                                                          'N/A',
                                                                                                                        ),
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
                                                                                                              if ((currentUserDocument?.eoiExpressed?.toList() ?? []).contains(rowPropertiesRecord.propertyId))
                                                                                                                AuthUserStreamWidget(
                                                                                                                  builder: (context) => SvgPicture.asset(
                                                                                                                    'assets/images/EOI_Icon.svg',
                                                                                                                    width: 20,
                                                                                                                    height: 20,
                                                                                                                    fit: BoxFit.cover,
                                                                                                                  ),
                                                                                                                ),
                                                                                                            ],
                                                                                                          ),
                                                                                                          Row(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            children: [
                                                                                                              Builder(
                                                                                                                builder: (context) => Padding(
                                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                                                                  child: InkWell(
                                                                                                                    onTap: () async {
                                                                                                                      logFirebaseEvent('P_L_P_SIMILAR_PAGE_Icon_aaee0ps4_ON_TAP');
                                                                                                                      logFirebaseEvent('Icon_share');
                                                                                                                      await Share.share(
                                                                                                                        '${widget.title}%0A%0AReserve Price : ${valueOrDefault<String>(
                                                                                                                          functions.format(rowPropertiesRecord.auctionReservePrice),
                                                                                                                          'N/A',
                                                                                                                        )}%0APer Unit Rate : ${rowPropertiesRecord.perUnitRate}%0AEstimated Discount : ${'${rowPropertiesRecord.auctionDiscount}%'}%0AApplication Deadline : ${rowPropertiesRecord.applicationEndDate}%0A%0AProperty Details :%0A${rowPropertiesRecord.propertyUrl}%0A%0ALocation : ${functions.generateMaplink(rowPropertiesRecord.latitude!.toString(), rowPropertiesRecord.longitude!.toString())}%0A%0ACall : +91 1140 845 500%0AWhatsapp : +91 9899 360 360%0AEmail : care@hecta.co',
                                                                                                                        sharePositionOrigin: getWidgetBoundingBox(context),
                                                                                                                      );
                                                                                                                    },
                                                                                                                    child: Icon(
                                                                                                                      Icons.share_sharp,
                                                                                                                      color: Color(0xFFA0A0A0),
                                                                                                                      size: 20,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                              if (!containerUserRecord!.likedProperties!.toList().contains(rowPropertiesRecord.uid))
                                                                                                                Padding(
                                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                                                                  child: InkWell(
                                                                                                                    onTap: () async {
                                                                                                                      logFirebaseEvent('P_L_P_SIMILAR_PAGE_Icon_d2u45pwr_ON_TAP');
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
                                                                                                                      logFirebaseEvent('P_L_P_SIMILAR_PAGE_Icon_cpsvp32j_ON_TAP');
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
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 8),
                                                                                        child: Container(
                                                                                          width: double.infinity,
                                                                                          height: 1,
                                                                                          decoration: BoxDecoration(
                                                                                            color: Color(0xFFE0E0E0),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 5),
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
                                                                                                functions.strToTimeStampCopy(rowPropertiesRecord.auctionStartTime),
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
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Text(
                                                                                              'Seller:',
                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                    color: Color(0xFF8E8E8E),
                                                                                                    fontSize: 14,
                                                                                                    fontWeight: FontWeight.normal,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                  ),
                                                                                            ),
                                                                                            Expanded(
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                                                child: Text(
                                                                                                  valueOrDefault<String>(
                                                                                                    functions.limitStr(rowPropertiesRecord.institutionName!),
                                                                                                    'N/A',
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                        fontSize: MediaQuery.of(context).size.width >= 345.0 ? 14.0 : 13.0,
                                                                                                        fontWeight: FontWeight.normal,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                      ),
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
                                                                                              rowPropertiesRecord.auctionReservePrice == 0 ? 'N/A' : '${rowPropertiesRecord.auctionDiscount}%',
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
                                                                                              functions.strToTimeStampCopy(rowPropertiesRecord.applicationEndDate),
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
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  if (_model.trendingValue ?? true)
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15, 0, 15, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 10, 0, 0),
                                                child: Container(
                                                  decoration: BoxDecoration(),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 10),
                                                    child: Builder(
                                                      builder: (context) {
                                                        final ref1 =
                                                            pLPSimilarPropertiesRecordList
                                                                .where((e) =>
                                                                    functions.filterplace(
                                                                        FFAppState()
                                                                            .filterArea
                                                                            .toList(),
                                                                        FFAppState()
                                                                            .filterCity
                                                                            .toList(),
                                                                        e.city,
                                                                        e
                                                                            .location,
                                                                        FFAppState()
                                                                            .filterState
                                                                            .toList(),
                                                                        e
                                                                            .state!)! &&
                                                                    functions.typesfunc(
                                                                        FFAppState()
                                                                            .filterType
                                                                            .toList(),
                                                                        e
                                                                            .productCategories)! &&
                                                                    functions.banksfunc(
                                                                        FFAppState()
                                                                            .filterBanks
                                                                            .toList(),
                                                                        e
                                                                            .institutionName)! &&
                                                                    valueOrDefault<
                                                                        bool>(
                                                                      FFAppState().filterPrivateTreaty ==
                                                                              true
                                                                          ? (e.auctionStartTime == null || e.auctionStartTime == ''
                                                                              ? true
                                                                              : false)
                                                                          : true,
                                                                      true,
                                                                    ) &&
                                                                    columnCarouselsRecord!
                                                                        .propertyId!
                                                                        .toList()
                                                                        .contains(e
                                                                            .propertyId) &&
                                                                    () {
                                                                      if ((functions.applydateFilter(FFAppState().filterAppDateStart!, FFAppState().filterAppDateEnd!, getCurrentTimestamp) ==
                                                                              true) &&
                                                                          functions.calendarDatesAfter(
                                                                              FFAppState().filterAppDateStart!,
                                                                              e.applicationEndDate!)! &&
                                                                          functions.calendarDatesBefore(FFAppState().filterAppDateEnd!, e.applicationEndDate!)!) {
                                                                        return true;
                                                                      } else if (functions.applydateFilter(
                                                                              FFAppState().filterAppDateStart!,
                                                                              FFAppState().filterAppDateEnd!,
                                                                              getCurrentTimestamp) ==
                                                                          false) {
                                                                        return true;
                                                                      } else {
                                                                        return false;
                                                                      }
                                                                    }() &&
                                                                    () {
                                                                      if ((functions.applydateFilter(FFAppState().filterAucDateStart!, FFAppState().filterAucDateEnd!, getCurrentTimestamp) ==
                                                                              true) &&
                                                                          functions.calendarDatesAfter(
                                                                              FFAppState().filterAucDateStart!,
                                                                              e.auctionStartTime!)! &&
                                                                          functions.calendarDatesBefore(FFAppState().filterAucDateEnd!, e.auctionStartTime!)!) {
                                                                        return true;
                                                                      } else if (functions.applydateFilter(
                                                                              FFAppState().filterAucDateStart!,
                                                                              FFAppState().filterAucDateEnd!,
                                                                              getCurrentTimestamp) ==
                                                                          false) {
                                                                        return true;
                                                                      } else {
                                                                        return false;
                                                                      }
                                                                    }() &&
                                                                    ((e.auctionReservePrice! >=
                                                                            functions.returnPrice(FFAppState()
                                                                                .filterMinBudget)!) &&
                                                                        (e.auctionReservePrice! <=
                                                                            functions.returnPrice(FFAppState()
                                                                                .filterMaxBudget)!)))
                                                                .toList()
                                                                .map((e) =>
                                                                    e.reference)
                                                                .toList();
                                                        if (ref1.isEmpty) {
                                                          return EmptyTrendingWidget();
                                                        }
                                                        return ListView.builder(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              ref1.length,
                                                          itemBuilder: (context,
                                                              ref1Index) {
                                                            final ref1Item =
                                                                ref1[ref1Index];
                                                            return Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          10),
                                                              child: Container(
                                                                height: 177,
                                                                constraints:
                                                                    BoxConstraints(
                                                                  maxHeight:
                                                                      217,
                                                                ),
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: StreamBuilder<
                                                                    PropertiesRecord>(
                                                                  stream: PropertiesRecord
                                                                      .getDocument(
                                                                          ref1Item),
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
                                                                            'P_L_P_SIMILAR_PAGE_Row_lcw6inym_ON_TAP');
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
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Stack(
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                                                                  child: Container(
                                                                                    height: 167,
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
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8, 20, 8, 8),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Container(
                                                                                                width: 76,
                                                                                                height: 76,
                                                                                                decoration: BoxDecoration(),
                                                                                                child: Stack(
                                                                                                  children: [
                                                                                                    FlutterFlowStaticMap(
                                                                                                      location: functions.strToLatLng(rowPropertiesRecord.latitude, rowPropertiesRecord.longitude),
                                                                                                      apiKey: 'pk.eyJ1IjoiaGVjdGFkZXYiLCJhIjoiY2xkd3dnNng0MGJ2YzNxcGtrNGk3M3M2NyJ9.BnhxpExhiPp8nNwDs5nJYg',
                                                                                                      style: MapBoxStyle.Streets,
                                                                                                      width: 76,
                                                                                                      height: 76,
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
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Text(
                                                                                                        '${rowPropertiesRecord.title}, ${rowPropertiesRecord.state}',
                                                                                                        style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                              fontSize: () {
                                                                                                                if (MediaQuery.of(context).size.width >= 375.0) {
                                                                                                                  return 16.0;
                                                                                                                } else if ((MediaQuery.of(context).size.width < 375.0) && (MediaQuery.of(context).size.width >= 345.0)) {
                                                                                                                  return 15.0;
                                                                                                                } else if ((MediaQuery.of(context).size.width < 345.0) && (MediaQuery.of(context).size.width >= 300.0)) {
                                                                                                                  return 14.0;
                                                                                                                } else {
                                                                                                                  return 13.0;
                                                                                                                }
                                                                                                              }(),
                                                                                                              fontWeight: FontWeight.normal,
                                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                            ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
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
                                                                                                                    (rowPropertiesRecord.auctionReservePrice == 0) || (rowPropertiesRecord.auctionReservePrice == null)
                                                                                                                        ? 'N/A'
                                                                                                                        : valueOrDefault<String>(
                                                                                                                            functions.format(rowPropertiesRecord.auctionReservePrice),
                                                                                                                            'N/A',
                                                                                                                          ),
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
                                                                                                                if ((currentUserDocument?.eoiExpressed?.toList() ?? []).contains(rowPropertiesRecord.propertyId))
                                                                                                                  AuthUserStreamWidget(
                                                                                                                    builder: (context) => SvgPicture.asset(
                                                                                                                      'assets/images/EOI_Icon.svg',
                                                                                                                      width: 20,
                                                                                                                      height: 20,
                                                                                                                      fit: BoxFit.cover,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                              ],
                                                                                                            ),
                                                                                                            Row(
                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                              children: [
                                                                                                                Builder(
                                                                                                                  builder: (context) => Padding(
                                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                                                                    child: InkWell(
                                                                                                                      onTap: () async {
                                                                                                                        logFirebaseEvent('P_L_P_SIMILAR_PAGE_Icon_skxsy8k9_ON_TAP');
                                                                                                                        logFirebaseEvent('Icon_share');
                                                                                                                        await Share.share(
                                                                                                                          '${widget.title}%0A%0AReserve Price : ${valueOrDefault<String>(
                                                                                                                            functions.format(rowPropertiesRecord.auctionReservePrice),
                                                                                                                            'N/A',
                                                                                                                          )}%0APer Unit Rate : ${rowPropertiesRecord.perUnitRate}%0AEstimated Discount : ${'${rowPropertiesRecord.auctionDiscount}%'}%0AApplication Deadline : ${rowPropertiesRecord.applicationEndDate}%0A%0AProperty Details :%0A${rowPropertiesRecord.propertyUrl}%0A%0ALocation : ${functions.generateMaplink(rowPropertiesRecord.latitude!.toString(), rowPropertiesRecord.longitude!.toString())}%0A%0ACall : +91 1140 845 500%0AWhatsapp : +91 9899 360 360%0AEmail : care@hecta.co',
                                                                                                                          sharePositionOrigin: getWidgetBoundingBox(context),
                                                                                                                        );
                                                                                                                      },
                                                                                                                      child: Icon(
                                                                                                                        Icons.share_sharp,
                                                                                                                        color: Color(0xFFA0A0A0),
                                                                                                                        size: 20,
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                                if (!containerUserRecord!.likedProperties!.toList().contains(rowPropertiesRecord.uid))
                                                                                                                  Padding(
                                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                                                                    child: InkWell(
                                                                                                                      onTap: () async {
                                                                                                                        logFirebaseEvent('P_L_P_SIMILAR_PAGE_Icon_ks3693a8_ON_TAP');
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
                                                                                                                        logFirebaseEvent('P_L_P_SIMILAR_PAGE_Icon_82rital4_ON_TAP');
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
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 8),
                                                                                          child: Container(
                                                                                            width: double.infinity,
                                                                                            height: 1,
                                                                                            decoration: BoxDecoration(
                                                                                              color: Color(0xFFE0E0E0),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 5),
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
                                                                                                  functions.strToTimeStampCopy(rowPropertiesRecord.auctionStartTime),
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
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Text(
                                                                                                'Seller:',
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                      color: Color(0xFF8E8E8E),
                                                                                                      fontSize: 14,
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                    ),
                                                                                              ),
                                                                                              Expanded(
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                                                  child: Text(
                                                                                                    valueOrDefault<String>(
                                                                                                      functions.limitStr(rowPropertiesRecord.institutionName!),
                                                                                                      'N/A',
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                          fontSize: MediaQuery.of(context).size.width >= 345.0 ? 14.0 : 13.0,
                                                                                                          fontWeight: FontWeight.normal,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                        ),
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
                                                                                                rowPropertiesRecord.auctionReservePrice == 0 ? 'N/A' : '${rowPropertiesRecord.auctionDiscount}%',
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
                                                                                                functions.strToTimeStampCopy(rowPropertiesRecord.applicationEndDate),
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
                                                            );
                                                          },
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      wrapWithModel(
                                        model: _model.bottomNavGreyModel,
                                        updateCallback: () => setState(() {}),
                                        child: BottomNavGreyWidget(),
                                      ),
                                    ],
                                  ),
                                ],
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
