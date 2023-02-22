import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../custom_code/widgets/index.dart' as custom_widgets;
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'requirements_onboard_new_model.dart';
export 'requirements_onboard_new_model.dart';

class RequirementsOnboardNewWidget extends StatefulWidget {
  const RequirementsOnboardNewWidget({
    Key? key,
    this.fromSearch,
  }) : super(key: key);

  final bool? fromSearch;

  @override
  _RequirementsOnboardNewWidgetState createState() =>
      _RequirementsOnboardNewWidgetState();
}

class _RequirementsOnboardNewWidgetState
    extends State<RequirementsOnboardNewWidget> {
  late RequirementsOnboardNewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RequirementsOnboardNewModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'RequirementsOnboard_New'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('REQUIREMENTS_ONBOARD_NEW_RequirementsOnb');
      if (!widget.fromSearch!) {
        logFirebaseEvent('RequirementsOnboard_New_update_app_state');
        FFAppState().update(() {
          FFAppState().citiesPref = FFAppState().emptyList.toList();
          FFAppState().minBudgetNew = '0';
          FFAppState().maxBudgetNew = '1000Cr+';
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

    return Title(
        title: 'RequirementsOnboard_New',
        color: FlutterFlowTheme.of(context).primaryColor,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.white,
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 20, 15, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.arrow_back_sharp,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SelectionArea(
                                          child: Text(
                                        'Requirements',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1Family,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1Family),
                                            ),
                                      )),
                                      InkWell(
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'REQUIREMENTS_ONBOARD_NEW_Row_9b19jl2f_ON');
                                          logFirebaseEvent('Row_backend_call');

                                          final userUpdateData = {
                                            ...createUserRecordData(
                                              budgetFrom: '',
                                              budgetTo: '',
                                            ),
                                            'cities': FFAppState().emptyList,
                                            'property_type':
                                                FFAppState().emptyList,
                                          };
                                          await currentUserReference!
                                              .update(userUpdateData);
                                          logFirebaseEvent('Row_navigate_to');

                                          context.pushNamed('Home_Screen');
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SelectionArea(
                                                child: Text(
                                              'Skip',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1Family,
                                                        fontSize: 14,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family),
                                                      ),
                                            )),
                                            Icon(
                                              Icons.keyboard_arrow_right_sharp,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 22,
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
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 0),
                                  child: InkWell(
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'REQUIREMENTS_ONBOARD_NEW_Container_9k3qh');
                                      logFirebaseEvent('Container_navigate_to');

                                      context
                                          .pushNamed('Search_ScreenReqOnboard');
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15, 0, 15, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              'Search City/Locality',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1Family,
                                                        color:
                                                            Color(0xFFA0A0A0),
                                                        fontSize: 14,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family),
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                if (FFAppState().citiesPref.length != 0)
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 15, 0, 0),
                                    child: Container(
                                      height: 24,
                                      decoration: BoxDecoration(),
                                      child: Builder(
                                        builder: (context) {
                                          final city =
                                              FFAppState().citiesPref.toList();
                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.horizontal,
                                            itemCount: city.length,
                                            itemBuilder: (context, cityIndex) {
                                              final cityItem = city[cityIndex];
                                              return Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 10, 0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFF4F4F4),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    border: Border.all(
                                                      color: Color(0xFFBCBCBC),
                                                      width: 1,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 1, 0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(10,
                                                                      5, 5, 5),
                                                          child: SelectionArea(
                                                              child: Text(
                                                            cityItem,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family,
                                                                  fontSize: 12,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText1Family),
                                                                ),
                                                          )),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      3, 10, 0),
                                                          child: InkWell(
                                                            onTap: () async {
                                                              logFirebaseEvent(
                                                                  'REQUIREMENTS_ONBOARD_NEW_Icon_vxaekn9v_O');
                                                              logFirebaseEvent(
                                                                  'Icon_update_app_state');
                                                              FFAppState()
                                                                  .update(() {
                                                                FFAppState()
                                                                    .removeFromCitiesPref(
                                                                        cityItem);
                                                              });
                                                            },
                                                            child: Icon(
                                                              Icons.clear_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryColor,
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
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    border: Border.all(
                                                      color: FFAppState()
                                                              .citiesPref
                                                              .contains(
                                                                  'New Delhi')
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor
                                                          : Colors.white,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                4, 4, 4, 4),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'REQUIREMENTS_ONBOARD_NEW_Image_ii5c1ro9_');
                                                        if (!FFAppState()
                                                            .citiesPref
                                                            .contains(
                                                                'New Delhi')) {
                                                          logFirebaseEvent(
                                                              'Image_update_app_state');
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState().citiesPref = functions
                                                                .appendatStart(
                                                                    FFAppState()
                                                                        .citiesPref
                                                                        .toList(),
                                                                    'New Delhi')
                                                                .toList();
                                                          });
                                                        } else {
                                                          logFirebaseEvent(
                                                              'Image_update_app_state');
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState()
                                                                .removeFromCitiesPref(
                                                                    'New Delhi');
                                                          });
                                                        }
                                                      },
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                        child:
                                                            CachedNetworkImage(
                                                          imageUrl:
                                                              'https://firebasestorage.googleapis.com/v0/b/hecta-a99ff.appspot.com/o/Cities_requirements%2FDelhi.jpg?alt=media&token=3be7267c-4387-4c4e-a5c6-2417b4cf0090',
                                                          width: 47,
                                                          height: 47,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 10, 0, 0),
                                                child: SelectionArea(
                                                    child: Text(
                                                  'New Delhi',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1Family,
                                                        color: FFAppState()
                                                                .citiesPref
                                                                .contains(
                                                                    'New Delhi')
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor
                                                            : Color(0xFF8E8E8E),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family),
                                                      ),
                                                )),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    border: Border.all(
                                                      color: FFAppState()
                                                              .citiesPref
                                                              .contains(
                                                                  'Gurugram')
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor
                                                          : Colors.white,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                4, 4, 4, 4),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'REQUIREMENTS_ONBOARD_NEW_Image_3dy0f6q4_');
                                                        if (!FFAppState()
                                                            .citiesPref
                                                            .contains(
                                                                'Gurugram')) {
                                                          logFirebaseEvent(
                                                              'Image_update_app_state');
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState().citiesPref = functions
                                                                .appendatStart(
                                                                    FFAppState()
                                                                        .citiesPref
                                                                        .toList(),
                                                                    'Gurugram')
                                                                .toList();
                                                          });
                                                        } else {
                                                          logFirebaseEvent(
                                                              'Image_update_app_state');
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState()
                                                                .removeFromCitiesPref(
                                                                    'Gurugram');
                                                          });
                                                        }
                                                      },
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                        child:
                                                            CachedNetworkImage(
                                                          imageUrl:
                                                              'https://firebasestorage.googleapis.com/v0/b/hecta-a99ff.appspot.com/o/Cities_requirements%2FGurugram.jpg?alt=media&token=136912d4-7c5a-49a8-8e1c-49e799d21b7e',
                                                          width: 47,
                                                          height: 47,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 10, 0, 0),
                                                child: SelectionArea(
                                                    child: Text(
                                                  'Gurugram',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1Family,
                                                        color: FFAppState()
                                                                .citiesPref
                                                                .contains(
                                                                    'Guruugram')
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor
                                                            : Color(0xFF8E8E8E),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family),
                                                      ),
                                                )),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    border: Border.all(
                                                      color: FFAppState()
                                                              .citiesPref
                                                              .contains('Noida')
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor
                                                          : Colors.white,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                4, 4, 4, 4),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'REQUIREMENTS_ONBOARD_NEW_Image_g3irscu8_');
                                                        if (!FFAppState()
                                                            .citiesPref
                                                            .contains(
                                                                'Noida')) {
                                                          logFirebaseEvent(
                                                              'Image_update_app_state');
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState().citiesPref = functions
                                                                .appendatStart(
                                                                    FFAppState()
                                                                        .citiesPref
                                                                        .toList(),
                                                                    'Noida')
                                                                .toList();
                                                          });
                                                        } else {
                                                          logFirebaseEvent(
                                                              'Image_update_app_state');
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState()
                                                                .removeFromCitiesPref(
                                                                    'Noida');
                                                          });
                                                        }
                                                      },
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                        child:
                                                            CachedNetworkImage(
                                                          imageUrl:
                                                              'https://firebasestorage.googleapis.com/v0/b/hecta-a99ff.appspot.com/o/Cities_requirements%2FNoida.jpg?alt=media&token=5e005826-2067-4682-bdf0-39889f05acd1',
                                                          width: 47,
                                                          height: 47,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 10, 0, 0),
                                                child: SelectionArea(
                                                    child: Text(
                                                  'Noida',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1Family,
                                                        color: FFAppState()
                                                                .citiesPref
                                                                .contains(
                                                                    'Noida')
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor
                                                            : Color(0xFF8E8E8E),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family),
                                                      ),
                                                )),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    border: Border.all(
                                                      color: FFAppState()
                                                              .citiesPref
                                                              .contains(
                                                                  'Mumbai')
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor
                                                          : Colors.white,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                4, 4, 4, 4),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'REQUIREMENTS_ONBOARD_NEW_Image_q9tewl6n_');
                                                        if (!FFAppState()
                                                            .citiesPref
                                                            .contains(
                                                                'Mumbai')) {
                                                          logFirebaseEvent(
                                                              'Image_update_app_state');
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState().citiesPref = functions
                                                                .appendatStart(
                                                                    FFAppState()
                                                                        .citiesPref
                                                                        .toList(),
                                                                    'Mumbai')
                                                                .toList();
                                                          });
                                                        } else {
                                                          logFirebaseEvent(
                                                              'Image_update_app_state');
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState()
                                                                .removeFromCitiesPref(
                                                                    'Mumbai');
                                                          });
                                                        }
                                                      },
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                        child:
                                                            CachedNetworkImage(
                                                          imageUrl:
                                                              'https://firebasestorage.googleapis.com/v0/b/hecta-a99ff.appspot.com/o/Cities_requirements%2FMumbai.jpg?alt=media&token=3f9bb6f3-ef3a-414d-a367-05d361045560',
                                                          width: 47,
                                                          height: 47,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 10, 0, 0),
                                                child: SelectionArea(
                                                    child: Text(
                                                  'Mumbai',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1Family,
                                                        color: FFAppState()
                                                                .citiesPref
                                                                .contains(
                                                                    'Mumbai')
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor
                                                            : Color(0xFF8E8E8E),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family),
                                                      ),
                                                )),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 10, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100),
                                                      border: Border.all(
                                                        color: FFAppState()
                                                                .citiesPref
                                                                .contains(
                                                                    'Bengaluru')
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor
                                                            : Colors.white,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  4, 4, 4, 4),
                                                      child: InkWell(
                                                        onTap: () async {
                                                          logFirebaseEvent(
                                                              'REQUIREMENTS_ONBOARD_NEW_Image_7dptwddx_');
                                                          if (!FFAppState()
                                                              .citiesPref
                                                              .contains(
                                                                  'Bengaluru')) {
                                                            logFirebaseEvent(
                                                                'Image_update_app_state');
                                                            FFAppState()
                                                                .update(() {
                                                              FFAppState().citiesPref = functions
                                                                  .appendatStart(
                                                                      FFAppState()
                                                                          .citiesPref
                                                                          .toList(),
                                                                      'Bengaluru')
                                                                  .toList();
                                                            });
                                                          } else {
                                                            logFirebaseEvent(
                                                                'Image_update_app_state');
                                                            FFAppState()
                                                                .update(() {
                                                              FFAppState()
                                                                  .removeFromCitiesPref(
                                                                      'Bengaluru');
                                                            });
                                                          }
                                                        },
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100),
                                                          child:
                                                              CachedNetworkImage(
                                                            imageUrl:
                                                                'https://firebasestorage.googleapis.com/v0/b/hecta-a99ff.appspot.com/o/Cities_requirements%2FBangalore.jpg?alt=media&token=175e65e0-4b00-499f-b183-4116d25e4300',
                                                            width: 47,
                                                            height: 47,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 10, 0, 0),
                                                  child: SelectionArea(
                                                      child: Text(
                                                    'Bengaluru',
                                                    style:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyText1
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family,
                                                              color: FFAppState()
                                                                      .citiesPref
                                                                      .contains(
                                                                          'Bengaluru')
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor
                                                                  : Color(
                                                                      0xFF8E8E8E),
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              useGoogleFonts: GoogleFonts
                                                                      .asMap()
                                                                  .containsKey(
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1Family),
                                                            ),
                                                  )),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                InkWell(
                                                  onTap: () async {
                                                    logFirebaseEvent(
                                                        'REQUIREMENTS_ONBOARD_NEW_Container_t7ruz');
                                                    logFirebaseEvent(
                                                        'Container_update_app_state');
                                                    FFAppState().update(() {
                                                      FFAppState().delhi =
                                                          false;
                                                      FFAppState()
                                                          .addToCitiesPref('');
                                                    });
                                                  },
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                        border: Border.all(
                                                          color: FFAppState()
                                                                  .citiesPref
                                                                  .contains(
                                                                      'Chennai')
                                                              ? FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryColor
                                                              : Colors.white,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    4, 4, 4, 4),
                                                        child: InkWell(
                                                          onTap: () async {
                                                            logFirebaseEvent(
                                                                'REQUIREMENTS_ONBOARD_NEW_Image_gx7oq93r_');
                                                            if (!FFAppState()
                                                                .citiesPref
                                                                .contains(
                                                                    'Chennai')) {
                                                              logFirebaseEvent(
                                                                  'Image_update_app_state');
                                                              FFAppState()
                                                                  .update(() {
                                                                FFAppState().citiesPref = functions
                                                                    .appendatStart(
                                                                        FFAppState()
                                                                            .citiesPref
                                                                            .toList(),
                                                                        'Chennai')
                                                                    .toList();
                                                              });
                                                            } else {
                                                              logFirebaseEvent(
                                                                  'Image_update_app_state');
                                                              FFAppState()
                                                                  .update(() {
                                                                FFAppState()
                                                                    .removeFromCitiesPref(
                                                                        'Chennai');
                                                              });
                                                            }
                                                          },
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100),
                                                            child:
                                                                CachedNetworkImage(
                                                              imageUrl:
                                                                  'https://firebasestorage.googleapis.com/v0/b/hecta-a99ff.appspot.com/o/Cities_requirements%2FChennai.jpg?alt=media&token=d33e7852-2893-40e9-9c58-8bbc1ff9f496',
                                                              width: 47,
                                                              height: 47,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 10, 0, 0),
                                                  child: SelectionArea(
                                                      child: Text(
                                                    'Chennai',
                                                    style:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyText1
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family,
                                                              color: FFAppState()
                                                                      .citiesPref
                                                                      .contains(
                                                                          'Chennai')
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor
                                                                  : Color(
                                                                      0xFF8E8E8E),
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              useGoogleFonts: GoogleFonts
                                                                      .asMap()
                                                                  .containsKey(
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1Family),
                                                            ),
                                                  )),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100),
                                                      border: Border.all(
                                                        color: FFAppState()
                                                                .citiesPref
                                                                .contains(
                                                                    'Hyderabad')
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor
                                                            : Colors.white,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  4, 4, 4, 4),
                                                      child: InkWell(
                                                        onTap: () async {
                                                          logFirebaseEvent(
                                                              'REQUIREMENTS_ONBOARD_NEW_Image_i80i4cjy_');
                                                          if (!FFAppState()
                                                              .citiesPref
                                                              .contains(
                                                                  'Hyderabad')) {
                                                            logFirebaseEvent(
                                                                'Image_update_app_state');
                                                            FFAppState()
                                                                .update(() {
                                                              FFAppState().citiesPref = functions
                                                                  .appendatStart(
                                                                      FFAppState()
                                                                          .citiesPref
                                                                          .toList(),
                                                                      'Hyderabad')
                                                                  .toList();
                                                            });
                                                          } else {
                                                            logFirebaseEvent(
                                                                'Image_update_app_state');
                                                            FFAppState()
                                                                .update(() {
                                                              FFAppState()
                                                                  .removeFromCitiesPref(
                                                                      'Hyderabad');
                                                            });
                                                          }
                                                        },
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100),
                                                          child:
                                                              CachedNetworkImage(
                                                            imageUrl:
                                                                'https://firebasestorage.googleapis.com/v0/b/hecta-a99ff.appspot.com/o/Cities_requirements%2FHyderabad.jpg?alt=media&token=280d9e21-196f-4c56-9189-f84d45436202',
                                                            width: 47,
                                                            height: 47,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 10, 0, 0),
                                                  child: SelectionArea(
                                                      child: Text(
                                                    'Hyderabad',
                                                    style:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyText1
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family,
                                                              color: FFAppState()
                                                                      .citiesPref
                                                                      .contains(
                                                                          'Hyderabad')
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor
                                                                  : Color(
                                                                      0xFF8E8E8E),
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              useGoogleFonts: GoogleFonts
                                                                      .asMap()
                                                                  .containsKey(
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1Family),
                                                            ),
                                                  )),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100),
                                                      border: Border.all(
                                                        color: FFAppState()
                                                                .citiesPref
                                                                .contains(
                                                                    'Pune')
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor
                                                            : Colors.white,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  4, 4, 4, 4),
                                                      child: InkWell(
                                                        onTap: () async {
                                                          logFirebaseEvent(
                                                              'REQUIREMENTS_ONBOARD_NEW_Image_lhbs6h28_');
                                                          if (!FFAppState()
                                                              .citiesPref
                                                              .contains(
                                                                  'Pune')) {
                                                            logFirebaseEvent(
                                                                'Image_update_app_state');
                                                            FFAppState()
                                                                .update(() {
                                                              FFAppState().citiesPref = functions
                                                                  .appendatStart(
                                                                      FFAppState()
                                                                          .citiesPref
                                                                          .toList(),
                                                                      'Pune')
                                                                  .toList();
                                                            });
                                                          } else {
                                                            logFirebaseEvent(
                                                                'Image_update_app_state');
                                                            FFAppState()
                                                                .update(() {
                                                              FFAppState()
                                                                  .removeFromCitiesPref(
                                                                      'Pune');
                                                            });
                                                          }
                                                        },
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100),
                                                          child:
                                                              CachedNetworkImage(
                                                            imageUrl:
                                                                'https://firebasestorage.googleapis.com/v0/b/hecta-a99ff.appspot.com/o/Cities_requirements%2FPune.jpg?alt=media&token=28b436c0-fcbc-463c-ab5f-fe24e8bf3be5',
                                                            width: 47,
                                                            height: 47,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 10, 0, 0),
                                                  child: SelectionArea(
                                                      child: Text(
                                                    'Pune',
                                                    style:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyText1
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family,
                                                              color: FFAppState()
                                                                      .citiesPref
                                                                      .contains(
                                                                          'Pune')
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor
                                                                  : Color(
                                                                      0xFF8E8E8E),
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              useGoogleFonts: GoogleFonts
                                                                      .asMap()
                                                                  .containsKey(
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1Family),
                                                            ),
                                                  )),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SelectionArea(
                                          child: Text(
                                        'Budget',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      )),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 10, 0, 0),
                                        child: AuthUserStreamWidget(
                                          builder: (context) => Container(
                                            width: double.infinity,
                                            height: 70,
                                            child: custom_widgets.TwowaySilder(
                                              width: double.infinity,
                                              height: 70,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SelectionArea(
                                          child: Text(
                                        'Property Type',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      )),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 10, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 5, 0, 0),
                                                  child: InkWell(
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'REQUIREMENTS_ONBOARD_NEW_Row_zdzgnezo_ON');
                                                      if (FFAppState().rf) {
                                                        logFirebaseEvent(
                                                            'Row_update_app_state');
                                                        FFAppState().update(() {
                                                          FFAppState().rf =
                                                              false;
                                                        });
                                                      } else {
                                                        logFirebaseEvent(
                                                            'Row_update_app_state');
                                                        FFAppState().update(() {
                                                          FFAppState().rf =
                                                              true;
                                                        });
                                                      }
                                                    },
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 10, 0),
                                                          child:
                                                              AuthUserStreamWidget(
                                                            builder:
                                                                (context) =>
                                                                    Theme(
                                                              data: ThemeData(
                                                                checkboxTheme:
                                                                    CheckboxThemeData(
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(0),
                                                                  ),
                                                                ),
                                                                unselectedWidgetColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                              ),
                                                              child: Checkbox(
                                                                value: _model
                                                                    .rfValue ??= (currentUserDocument
                                                                            ?.propertyType
                                                                            ?.toList() ??
                                                                        [])
                                                                    .contains(
                                                                        'Residential Flat'),
                                                                onChanged:
                                                                    (newValue) async {
                                                                  setState(() =>
                                                                      _model.rfValue =
                                                                          newValue!);
                                                                },
                                                                activeColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryColor,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        SelectionArea(
                                                            child: Text(
                                                          'Residential Flat',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                        )),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 5, 0, 0),
                                                  child: InkWell(
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'REQUIREMENTS_ONBOARD_NEW_Row_qccomcht_ON');
                                                      if (FFAppState().ih) {
                                                        logFirebaseEvent(
                                                            'Row_update_app_state');
                                                        FFAppState().update(() {
                                                          FFAppState().ih =
                                                              false;
                                                        });
                                                      } else {
                                                        logFirebaseEvent(
                                                            'Row_update_app_state');
                                                        FFAppState().update(() {
                                                          FFAppState().ih =
                                                              true;
                                                        });
                                                      }
                                                    },
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        AuthUserStreamWidget(
                                                          builder: (context) =>
                                                              Theme(
                                                            data: ThemeData(
                                                              checkboxTheme:
                                                                  CheckboxThemeData(
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              0),
                                                                ),
                                                              ),
                                                              unselectedWidgetColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                            ),
                                                            child: Checkbox(
                                                              value: _model
                                                                  .ihValue ??= (currentUserDocument
                                                                          ?.propertyType
                                                                          ?.toList() ??
                                                                      [])
                                                                  .contains(
                                                                      'Independent House'),
                                                              onChanged:
                                                                  (newValue) async {
                                                                setState(() =>
                                                                    _model.ihValue =
                                                                        newValue!);
                                                              },
                                                              activeColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(10,
                                                                      0, 0, 0),
                                                          child: SelectionArea(
                                                              child: Text(
                                                            'Independent House',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family,
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText1Family),
                                                                ),
                                                          )),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () async {
                                                    logFirebaseEvent(
                                                        'REQUIREMENTS_ONBOARD_NEW_Row_1flzrlmw_ON');
                                                    if (FFAppState().cp) {
                                                      logFirebaseEvent(
                                                          'Row_update_app_state');
                                                      FFAppState().update(() {
                                                        FFAppState().cp = false;
                                                      });
                                                    } else {
                                                      logFirebaseEvent(
                                                          'Row_update_app_state');
                                                      FFAppState().update(() {
                                                        FFAppState().cp = true;
                                                      });
                                                    }
                                                  },
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      AuthUserStreamWidget(
                                                        builder: (context) =>
                                                            Theme(
                                                          data: ThemeData(
                                                            checkboxTheme:
                                                                CheckboxThemeData(
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0),
                                                              ),
                                                            ),
                                                            unselectedWidgetColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                          ),
                                                          child: Checkbox(
                                                            value: _model
                                                                    .cpValue ??=
                                                                (currentUserDocument
                                                                            ?.propertyType
                                                                            ?.toList() ??
                                                                        [])
                                                                    .contains(
                                                                        'Commercial Property'),
                                                            onChanged:
                                                                (newValue) async {
                                                              setState(() =>
                                                                  _model.cpValue =
                                                                      newValue!);
                                                            },
                                                            activeColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(10, 0,
                                                                    0, 0),
                                                        child: SelectionArea(
                                                            child: Text(
                                                          'Commercial Property',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                        )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 5, 0, 0),
                                                  child: InkWell(
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'REQUIREMENTS_ONBOARD_NEW_Row_aeil96sb_ON');
                                                      if (FFAppState().off) {
                                                        logFirebaseEvent(
                                                            'Row_update_app_state');
                                                        FFAppState().update(() {
                                                          FFAppState().off =
                                                              false;
                                                        });
                                                      } else {
                                                        logFirebaseEvent(
                                                            'Row_update_app_state');
                                                        FFAppState().update(() {
                                                          FFAppState().off =
                                                              true;
                                                        });
                                                      }
                                                    },
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        AuthUserStreamWidget(
                                                          builder: (context) =>
                                                              Theme(
                                                            data: ThemeData(
                                                              checkboxTheme:
                                                                  CheckboxThemeData(
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              0),
                                                                ),
                                                              ),
                                                              unselectedWidgetColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                            ),
                                                            child: Checkbox(
                                                              value: _model
                                                                  .ofcValue ??= (currentUserDocument
                                                                          ?.propertyType
                                                                          ?.toList() ??
                                                                      [])
                                                                  .contains(
                                                                      'Office'),
                                                              onChanged:
                                                                  (newValue) async {
                                                                setState(() =>
                                                                    _model.ofcValue =
                                                                        newValue!);
                                                              },
                                                              activeColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(10,
                                                                      0, 0, 0),
                                                          child: SelectionArea(
                                                              child: Text(
                                                            'Office',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family,
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText1Family),
                                                                ),
                                                          )),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () async {
                                                    logFirebaseEvent(
                                                        'REQUIREMENTS_ONBOARD_NEW_Row_0fpwan06_ON');
                                                    if (FFAppState().al) {
                                                      logFirebaseEvent(
                                                          'Row_update_app_state');
                                                      FFAppState().update(() {
                                                        FFAppState().al = false;
                                                      });
                                                    } else {
                                                      logFirebaseEvent(
                                                          'Row_update_app_state');
                                                      FFAppState().update(() {
                                                        FFAppState().al = true;
                                                      });
                                                    }
                                                  },
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 0,
                                                                    10, 0),
                                                        child:
                                                            AuthUserStreamWidget(
                                                          builder: (context) =>
                                                              Theme(
                                                            data: ThemeData(
                                                              checkboxTheme:
                                                                  CheckboxThemeData(
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              0),
                                                                ),
                                                              ),
                                                              unselectedWidgetColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                            ),
                                                            child: Checkbox(
                                                              value: _model
                                                                  .alValue ??= (currentUserDocument
                                                                          ?.propertyType
                                                                          ?.toList() ??
                                                                      [])
                                                                  .contains(
                                                                      'Agricultural Land'),
                                                              onChanged:
                                                                  (newValue) async {
                                                                setState(() =>
                                                                    _model.alValue =
                                                                        newValue!);
                                                              },
                                                              activeColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      SelectionArea(
                                                          child: Text(
                                                        'Agricultural Land',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family,
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText1Family),
                                                                ),
                                                      )),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 5, 0, 0),
                                                  child: InkWell(
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'REQUIREMENTS_ONBOARD_NEW_Row_wlbyigbt_ON');
                                                      if (FFAppState().rp) {
                                                        logFirebaseEvent(
                                                            'Row_update_app_state');
                                                        FFAppState().update(() {
                                                          FFAppState().rp =
                                                              false;
                                                        });
                                                      } else {
                                                        logFirebaseEvent(
                                                            'Row_update_app_state');
                                                        FFAppState().update(() {
                                                          FFAppState().rp =
                                                              true;
                                                        });
                                                      }
                                                    },
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 10, 0),
                                                          child:
                                                              AuthUserStreamWidget(
                                                            builder:
                                                                (context) =>
                                                                    Theme(
                                                              data: ThemeData(
                                                                checkboxTheme:
                                                                    CheckboxThemeData(
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(0),
                                                                  ),
                                                                ),
                                                                unselectedWidgetColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                              ),
                                                              child: Checkbox(
                                                                value: _model
                                                                    .rpValue ??= (currentUserDocument
                                                                            ?.propertyType
                                                                            ?.toList() ??
                                                                        [])
                                                                    .contains(
                                                                        'Residential Plot'),
                                                                onChanged:
                                                                    (newValue) async {
                                                                  setState(() =>
                                                                      _model.rpValue =
                                                                          newValue!);
                                                                },
                                                                activeColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryColor,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        SelectionArea(
                                                            child: Text(
                                                          'Residential Plot',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                        )),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () async {
                                                    logFirebaseEvent(
                                                        'REQUIREMENTS_ONBOARD_NEW_Row_lcgbujxs_ON');
                                                    if (FFAppState().lnb) {
                                                      logFirebaseEvent(
                                                          'Row_update_app_state');
                                                      FFAppState().update(() {
                                                        FFAppState().lnb =
                                                            false;
                                                      });
                                                    } else {
                                                      logFirebaseEvent(
                                                          'Row_update_app_state');
                                                      FFAppState().update(() {
                                                        FFAppState().lnb = true;
                                                      });
                                                    }
                                                  },
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 0,
                                                                    10, 0),
                                                        child:
                                                            AuthUserStreamWidget(
                                                          builder: (context) =>
                                                              Theme(
                                                            data: ThemeData(
                                                              checkboxTheme:
                                                                  CheckboxThemeData(
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              0),
                                                                ),
                                                              ),
                                                              unselectedWidgetColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                            ),
                                                            child: Checkbox(
                                                              value: _model
                                                                  .lnbValue ??= (currentUserDocument
                                                                          ?.propertyType
                                                                          ?.toList() ??
                                                                      [])
                                                                  .contains(
                                                                      'Land & Building'),
                                                              onChanged:
                                                                  (newValue) async {
                                                                setState(() =>
                                                                    _model.lnbValue =
                                                                        newValue!);
                                                              },
                                                              activeColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 5, 0, 0),
                                                        child: SelectionArea(
                                                            child: Text(
                                                          'Land & Building',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                        )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 5, 0, 0),
                                                  child: InkWell(
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'REQUIREMENTS_ONBOARD_NEW_Row_9ffo2d1p_ON');
                                                      if (FFAppState().ip) {
                                                        logFirebaseEvent(
                                                            'Row_update_app_state');
                                                        FFAppState().update(() {
                                                          FFAppState().ip =
                                                              false;
                                                        });
                                                      } else {
                                                        logFirebaseEvent(
                                                            'Row_update_app_state');
                                                        FFAppState().update(() {
                                                          FFAppState().ip =
                                                              true;
                                                        });
                                                      }
                                                    },
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        AuthUserStreamWidget(
                                                          builder: (context) =>
                                                              Theme(
                                                            data: ThemeData(
                                                              checkboxTheme:
                                                                  CheckboxThemeData(
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              0),
                                                                ),
                                                              ),
                                                              unselectedWidgetColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                            ),
                                                            child: Checkbox(
                                                              value: _model
                                                                  .ipValue ??= (currentUserDocument
                                                                          ?.propertyType
                                                                          ?.toList() ??
                                                                      [])
                                                                  .contains(
                                                                      'Industrial Plot'),
                                                              onChanged:
                                                                  (newValue) async {
                                                                setState(() =>
                                                                    _model.ipValue =
                                                                        newValue!);
                                                              },
                                                              activeColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(10,
                                                                      0, 0, 0),
                                                          child: SelectionArea(
                                                              child: Text(
                                                            'Industrial Property',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family,
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText1Family),
                                                                ),
                                                          )),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 5, 0, 0),
                                                  child: InkWell(
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'REQUIREMENTS_ONBOARD_NEW_Row_rjtti3py_ON');
                                                      if (FFAppState().sh) {
                                                        logFirebaseEvent(
                                                            'Row_update_app_state');
                                                        FFAppState().update(() {
                                                          FFAppState().sh =
                                                              false;
                                                        });
                                                      } else {
                                                        logFirebaseEvent(
                                                            'Row_update_app_state');
                                                        FFAppState().update(() {
                                                          FFAppState().sh =
                                                              true;
                                                        });
                                                      }
                                                    },
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        AuthUserStreamWidget(
                                                          builder: (context) =>
                                                              Theme(
                                                            data: ThemeData(
                                                              checkboxTheme:
                                                                  CheckboxThemeData(
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              0),
                                                                ),
                                                              ),
                                                              unselectedWidgetColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                            ),
                                                            child: Checkbox(
                                                              value: _model
                                                                      .shopValue ??=
                                                                  (currentUserDocument
                                                                              ?.propertyType
                                                                              ?.toList() ??
                                                                          [])
                                                                      .contains(
                                                                          'Shop'),
                                                              onChanged:
                                                                  (newValue) async {
                                                                setState(() =>
                                                                    _model.shopValue =
                                                                        newValue!);
                                                              },
                                                              activeColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(10,
                                                                      0, 0, 0),
                                                          child: SelectionArea(
                                                              child: Text(
                                                            'Shop',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family,
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText1Family),
                                                                ),
                                                          )),
                                                        ),
                                                      ],
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
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 15),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'REQUIREMENTS_ONBOARD_NEW_SAVE_BTN_ON_TAP');
                                    logFirebaseEvent('Button_backend_call');

                                    final userUpdateData = {
                                      ...createUserRecordData(
                                        budgetFrom: FFAppState().minBudgetNew,
                                        budgetTo: FFAppState().maxBudgetNew,
                                        prefGiven: true,
                                      ),
                                      'cities': FFAppState().citiesPref,
                                      'property_type': functions.saveReq(
                                          _model.cpValue!,
                                          _model.ihValue!,
                                          _model.alValue!,
                                          _model.lnbValue!,
                                          _model.alValue!,
                                          _model.lnbValue!,
                                          _model.ofcValue!,
                                          _model.rfValue!,
                                          _model.ipValue!),
                                    };
                                    await currentUserReference!
                                        .update(userUpdateData);
                                    logFirebaseEvent('Button_show_snack_bar');
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Saved!',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 2000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryColor,
                                      ),
                                    );
                                    logFirebaseEvent('Button_update_app_state');
                                    FFAppState().update(() {
                                      FFAppState().clearfilter = false;
                                    });
                                    logFirebaseEvent('Button_navigate_to');

                                    context.pushNamed('Home_Screen');
                                  },
                                  text: 'Save',
                                  options: FFButtonOptions(
                                    width: 130,
                                    height: 40,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .subtitle2Family,
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle2Family),
                                        ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
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
          ),
        ));
  }
}
