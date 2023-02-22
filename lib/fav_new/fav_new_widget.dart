import '../auth/auth_util.dart';
import '../auth/firebase_user_provider.dart';
import '../backend/backend.dart';
import '../components/app_bar_updated_widget.dart';
import '../components/bottom_nav_fav_widget.dart';
import '../components/empty_fav_widget.dart';
import '../components/loader_widget.dart';
import '../flutter_flow/flutter_flow_static_map.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/lat_lng.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mapbox_search/mapbox_search.dart';
import 'package:provider/provider.dart';
import 'fav_new_model.dart';
export 'fav_new_model.dart';

class FavNewWidget extends StatefulWidget {
  const FavNewWidget({Key? key}) : super(key: key);

  @override
  _FavNewWidgetState createState() => _FavNewWidgetState();
}

class _FavNewWidgetState extends State<FavNewWidget> {
  late FavNewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FavNewModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Fav_New'});
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

    return StreamBuilder<List<CarouselsRecord>>(
      stream: queryCarouselsRecord(
        queryBuilder: (carouselsRecord) =>
            carouselsRecord.where('title', isEqualTo: 'Hot Property'),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: LoaderWidget(),
          );
        }
        List<CarouselsRecord> favNewCarouselsRecordList = snapshot.data!;
        final favNewCarouselsRecord = favNewCarouselsRecordList.isNotEmpty
            ? favNewCarouselsRecordList.first
            : null;
        return Title(
            title: 'Fav_New',
            color: FlutterFlowTheme.of(context).primaryColor,
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: Colors.white,
              body: SafeArea(
                child: GestureDetector(
                  onTap: () =>
                      FocusScope.of(context).requestFocus(_unfocusNode),
                  child: StreamBuilder<List<ExpressionOfInterestRecord>>(
                    stream: queryExpressionOfInterestRecord(
                      queryBuilder: (expressionOfInterestRecord) =>
                          expressionOfInterestRecord.where('user_id',
                              isEqualTo: currentUserUid),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: LoaderWidget(),
                        );
                      }
                      List<ExpressionOfInterestRecord>
                          containerExpressionOfInterestRecordList =
                          snapshot.data!;
                      return Container(
                        decoration: BoxDecoration(),
                        child: StreamBuilder<UserRecord>(
                          stream: UserRecord.getDocument(currentUserReference!),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: LoaderWidget(),
                              );
                            }
                            final columnUserRecord = snapshot.data!;
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(),
                                      child: wrapWithModel(
                                        model: _model.appBarUpdatedModel,
                                        updateCallback: () => setState(() {}),
                                        child: AppBarUpdatedWidget(),
                                      ),
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15, 0, 15, 10),
                                    child:
                                        StreamBuilder<List<PropertiesRecord>>(
                                      stream: queryPropertiesRecord(
                                        queryBuilder: (propertiesRecord) =>
                                            propertiesRecord.whereIn(
                                                'uid',
                                                columnUserRecord
                                                    .likedProperties!
                                                    .toList()),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50,
                                              height: 50,
                                              child: CircularProgressIndicator(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                              ),
                                            ),
                                          );
                                        }
                                        List<PropertiesRecord>
                                            columnPropertiesRecordList =
                                            snapshot.data!;
                                        if (columnPropertiesRecordList
                                            .isEmpty) {
                                          return EmptyFavWidget();
                                        }
                                        return SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: List.generate(
                                                columnPropertiesRecordList
                                                    .length, (columnIndex) {
                                              final columnPropertiesRecord =
                                                  columnPropertiesRecordList[
                                                      columnIndex];
                                              return Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 10, 0, 0),
                                                child: InkWell(
                                                  onTap: () async {
                                                    logFirebaseEvent(
                                                        'FAV_NEW_PAGE_Row_b1jaxdha_ON_TAP');
                                                    logFirebaseEvent(
                                                        'Row_navigate_to');

                                                    context.pushNamed(
                                                      'PDP_New',
                                                      queryParams: {
                                                        'propRef':
                                                            serializeParam(
                                                          columnPropertiesRecord
                                                              .reference,
                                                          ParamType
                                                              .DocumentReference,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  },
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Stack(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          10,
                                                                          0,
                                                                          0),
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10),
                                                                  border: Border
                                                                      .all(
                                                                    color: Color(
                                                                        0xFFBCBCBC),
                                                                    width: 1,
                                                                  ),
                                                                ),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              10,
                                                                              20,
                                                                              10,
                                                                              10),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Container(
                                                                            width:
                                                                                66,
                                                                            height:
                                                                                66,
                                                                            decoration:
                                                                                BoxDecoration(),
                                                                            child:
                                                                                Stack(
                                                                              children: [
                                                                                FlutterFlowStaticMap(
                                                                                  location: functions.strToLatLng(columnPropertiesRecord.latitude, columnPropertiesRecord.longitude),
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
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  SelectionArea(
                                                                                      child: Text(
                                                                                    '${columnPropertiesRecord.title}, ${columnPropertiesRecord.state}',
                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                          fontWeight: FontWeight.normal,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                        ),
                                                                                  )),
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
                                                                                                (columnPropertiesRecord.auctionReservePrice == 0) || (columnPropertiesRecord.auctionReservePrice == null)
                                                                                                    ? 'N/A'
                                                                                                    : valueOrDefault<String>(
                                                                                                        functions.format(columnPropertiesRecord.auctionReservePrice),
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
                                                                                            if (favNewCarouselsRecord!.propertyId!.toList().contains(columnPropertiesRecord.propertyId))
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                                                                                child: SvgPicture.asset(
                                                                                                  'assets/images/Hot_Icon.svg',
                                                                                                  width: 20,
                                                                                                  height: 20,
                                                                                                  fit: BoxFit.cover,
                                                                                                ),
                                                                                              ),
                                                                                            if (!loggedIn)
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
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                                              child: Icon(
                                                                                                Icons.share_sharp,
                                                                                                color: Color(0xFFA0A0A0),
                                                                                                size: 20,
                                                                                              ),
                                                                                            ),
                                                                                            if (!columnUserRecord.likedProperties!.toList().contains(columnPropertiesRecord.uid))
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                                                child: InkWell(
                                                                                                  onTap: () async {
                                                                                                    logFirebaseEvent('FAV_NEW_PAGE_Icon_pwdsjta9_ON_TAP');
                                                                                                    logFirebaseEvent('Icon_backend_call');

                                                                                                    final userUpdateData = {
                                                                                                      'liked_properties': FieldValue.arrayUnion([
                                                                                                        columnPropertiesRecord.uid
                                                                                                      ]),
                                                                                                    };
                                                                                                    await columnUserRecord.reference.update(userUpdateData);
                                                                                                  },
                                                                                                  child: Icon(
                                                                                                    Icons.favorite_sharp,
                                                                                                    color: Color(0xFFA0A0A0),
                                                                                                    size: 20,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            if (columnUserRecord.likedProperties!.toList().contains(columnPropertiesRecord.uid))
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(14, 0, 0, 0),
                                                                                                child: InkWell(
                                                                                                  onTap: () async {
                                                                                                    logFirebaseEvent('FAV_NEW_PAGE_Icon_iak3ng18_ON_TAP');
                                                                                                    logFirebaseEvent('Icon_backend_call');

                                                                                                    final userUpdateData = {
                                                                                                      'liked_properties': FieldValue.arrayRemove([
                                                                                                        columnPropertiesRecord.uid
                                                                                                      ]),
                                                                                                    };
                                                                                                    await columnUserRecord.reference.update(userUpdateData);
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
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              10,
                                                                              0,
                                                                              10,
                                                                              10),
                                                                      child:
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            1,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFFE0E0E0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              10,
                                                                              0,
                                                                              10,
                                                                              10),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
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
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                10,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                Text(
                                                                              functions.strToTimeStampCopy(columnPropertiesRecord.auctionStartTime),
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
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              10,
                                                                              0,
                                                                              10,
                                                                              10),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
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
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                10,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                Text(
                                                                              valueOrDefault<String>(
                                                                                columnPropertiesRecord.institutionName,
                                                                                'N/A',
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
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15,
                                                                          0,
                                                                          15,
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
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0xFFBCBCBC),
                                                                        width:
                                                                            1,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              4,
                                                                              5,
                                                                              4),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          SelectionArea(
                                                                              child: Text(
                                                                            'Estimated Discount ',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                  color: Color(0xFF66BB6A),
                                                                                  fontSize: 10,
                                                                                  fontWeight: FontWeight.bold,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                ),
                                                                          )),
                                                                          SelectionArea(
                                                                              child: Text(
                                                                            columnPropertiesRecord.auctionReservePrice == 0
                                                                                ? 'N/A'
                                                                                : '${columnPropertiesRecord.auctionDiscount}%',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                  color: Color(0xFF66BB6A),
                                                                                  fontSize: 10,
                                                                                  fontWeight: FontWeight.bold,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                ),
                                                                          )),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0xFFBCBCBC),
                                                                        width:
                                                                            1,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              4,
                                                                              5,
                                                                              4),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          SelectionArea(
                                                                              child: Text(
                                                                            'Apply by ',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                  color: Color(0xFF4682B4),
                                                                                  fontSize: 10,
                                                                                  fontWeight: FontWeight.bold,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                ),
                                                                          )),
                                                                          SelectionArea(
                                                                              child: Text(
                                                                            functions.strToTimeStampCopy(columnPropertiesRecord.applicationEndDate),
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                  color: Color(0xFF4682B4),
                                                                                  fontSize: 10,
                                                                                  fontWeight: FontWeight.bold,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                ),
                                                                          )),
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
                                                ),
                                              );
                                            }),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    wrapWithModel(
                                      model: _model.bottomNavFavModel,
                                      updateCallback: () => setState(() {}),
                                      child: BottomNavFavWidget(),
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
              ),
            ));
      },
    );
  }
}
