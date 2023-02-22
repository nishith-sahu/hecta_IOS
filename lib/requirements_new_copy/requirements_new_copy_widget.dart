import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/bottom_nav_pref_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../custom_code/widgets/index.dart' as custom_widgets;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'requirements_new_copy_model.dart';
export 'requirements_new_copy_model.dart';

class RequirementsNewCopyWidget extends StatefulWidget {
  const RequirementsNewCopyWidget({Key? key}) : super(key: key);

  @override
  _RequirementsNewCopyWidgetState createState() =>
      _RequirementsNewCopyWidgetState();
}

class _RequirementsNewCopyWidgetState extends State<RequirementsNewCopyWidget> {
  late RequirementsNewCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RequirementsNewCopyModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'Requirements_NewCopy'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('REQUIREMENTS_NEW_COPY_Requirements_NewCo');
      logFirebaseEvent('Requirements_NewCopy_update_app_state');
      FFAppState().update(() {
        FFAppState().citiesPref =
            (currentUserDocument?.cities?.toList() ?? []).toList();
      });
    });

    _model.textController ??= TextEditingController();
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

    return StreamBuilder<List<PrefrencesRecord>>(
      stream: queryPrefrencesRecord(
        queryBuilder: (prefrencesRecord) =>
            prefrencesRecord.where('user_id', isEqualTo: currentUserUid),
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
        List<PrefrencesRecord> requirementsNewCopyPrefrencesRecordList =
            snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final requirementsNewCopyPrefrencesRecord =
            requirementsNewCopyPrefrencesRecordList.isNotEmpty
                ? requirementsNewCopyPrefrencesRecordList.first
                : null;
        return Title(
            title: 'Requirements_NewCopy',
            color: FlutterFlowTheme.of(context).primaryColor,
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: Colors.white,
              body: SafeArea(
                child: GestureDetector(
                  onTap: () =>
                      FocusScope.of(context).requestFocus(_unfocusNode),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      InkWell(
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'REQUIREMENTS_NEW_COPY_Icon_p48gbus0_ON_T');
                                          logFirebaseEvent(
                                              'Icon_navigate_back');
                                          context.pop();
                                        },
                                        child: Icon(
                                          Icons.arrow_back_sharp,
                                          color: Colors.black,
                                          size: 24,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 20, 0, 0),
                                                  child: SelectionArea(
                                                      child: Text(
                                                    'Requirements',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyText1Family,
                                                          fontWeight:
                                                              FontWeight.w600,
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
                                            SelectionArea(
                                                child: Text(
                                              'Tell us what you’re looking for!',
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
                                            )),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 20, 0, 0),
                                    child: InkWell(
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'REQUIREMENTS_NEW_COPY_Container_0lrsf162');
                                        logFirebaseEvent(
                                            'Container_navigate_to');

                                        context.pushNamed('Search_ScreenReq');
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15, 0, 15, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Icon(
                                                Icons.search_sharp,
                                                color: Color(0xFFA0A0A0),
                                                size: 24,
                                              ),
                                              Expanded(
                                                child: TextFormField(
                                                  controller:
                                                      _model.textController,
                                                  readOnly: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    hintText:
                                                        'Search City / Locality',
                                                    hintStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyText2,
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    errorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    focusedErrorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 0, 0, 0),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1,
                                                  validator: _model
                                                      .textControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              Icon(
                                                Icons.mic_sharp,
                                                color: Color(0xFFA0A0A0),
                                                size: 24,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
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
                                                                  'REQUIREMENTS_NEW_COPY_Icon_2vrr0xfp_ON_T');
                                                              logFirebaseEvent(
                                                                  'Icon_update_app_state');
                                                              FFAppState()
                                                                  .update(() {
                                                                FFAppState()
                                                                    .removeFromCitiesPref(
                                                                        cityItem);
                                                              });
                                                              if (cityItem ==
                                                                  'Delhi') {
                                                                logFirebaseEvent(
                                                                    'Icon_update_app_state');
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                          .delhi =
                                                                      true;
                                                                });
                                                              } else {
                                                                if (cityItem ==
                                                                    'Gurgaon, Haryana') {
                                                                  logFirebaseEvent(
                                                                      'Icon_update_app_state');
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .gurgaon =
                                                                        true;
                                                                  });
                                                                } else {
                                                                  if (cityItem ==
                                                                      'Noida, Uttar Pradesh') {
                                                                    logFirebaseEvent(
                                                                        'Icon_update_app_state');
                                                                    FFAppState()
                                                                        .update(
                                                                            () {
                                                                      FFAppState()
                                                                              .noida =
                                                                          true;
                                                                    });
                                                                  } else {
                                                                    if (cityItem ==
                                                                        'Mumbai, Maharashtra') {
                                                                      logFirebaseEvent(
                                                                          'Icon_update_app_state');
                                                                      FFAppState()
                                                                          .update(
                                                                              () {
                                                                        FFAppState().mumbai =
                                                                            true;
                                                                      });
                                                                    } else {
                                                                      if (cityItem ==
                                                                          'Pune, Maharashtra') {
                                                                        logFirebaseEvent(
                                                                            'Icon_update_app_state');
                                                                        FFAppState()
                                                                            .update(() {
                                                                          FFAppState().pune =
                                                                              true;
                                                                        });
                                                                      } else {
                                                                        if (cityItem ==
                                                                            'Bangalore, Karnataka') {
                                                                          logFirebaseEvent(
                                                                              'Icon_update_app_state');
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().bangalore =
                                                                                true;
                                                                          });
                                                                        } else {
                                                                          if (cityItem ==
                                                                              'Chennai, Tamil Nadu') {
                                                                            logFirebaseEvent('Icon_update_app_state');
                                                                            FFAppState().update(() {
                                                                              FFAppState().chennai = true;
                                                                            });
                                                                          } else {
                                                                            if (cityItem ==
                                                                                'Hyderabad, Telangana') {
                                                                              logFirebaseEvent('Icon_update_app_state');
                                                                              FFAppState().update(() {
                                                                                FFAppState().hyderabad = true;
                                                                              });
                                                                            } else {
                                                                              if (cityItem == 'Surat, Gujarat') {
                                                                                logFirebaseEvent('Icon_update_app_state');
                                                                                FFAppState().update(() {
                                                                                  FFAppState().surat = true;
                                                                                });
                                                                              } else {
                                                                                if (cityItem == 'Chennai, Tamil Nadu') {
                                                                                  logFirebaseEvent('Icon_update_app_state');
                                                                                  FFAppState().update(() {
                                                                                    FFAppState().chennai = true;
                                                                                  });
                                                                                } else {
                                                                                  if (cityItem == 'Hyderabad, Telangana') {
                                                                                    logFirebaseEvent('Icon_update_app_state');
                                                                                    FFAppState().update(() {
                                                                                      FFAppState().hyderabad = true;
                                                                                    });
                                                                                  } else {
                                                                                    if (cityItem == 'Surat, Gujarat') {
                                                                                      logFirebaseEvent('Icon_update_app_state');
                                                                                      FFAppState().update(() {
                                                                                        FFAppState().surat = true;
                                                                                      });
                                                                                    } else {
                                                                                      if (cityItem == 'Goa') {
                                                                                        logFirebaseEvent('Icon_update_app_state');
                                                                                        FFAppState().update(() {
                                                                                          FFAppState().goa = true;
                                                                                        });
                                                                                      } else {
                                                                                        if (cityItem == 'Dehradun') {
                                                                                          logFirebaseEvent('Icon_update_app_state');
                                                                                          FFAppState().update(() {
                                                                                            FFAppState().dehradun = true;
                                                                                          });
                                                                                        } else {
                                                                                          if (cityItem == 'Ludhiana') {
                                                                                            logFirebaseEvent('Icon_update_app_state');
                                                                                            FFAppState().update(() {
                                                                                              FFAppState().ludhiana = true;
                                                                                            });
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
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
                                        0, 20, 0, 0),
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
                                                                    'New Delhi')
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
                                                              'REQUIREMENTS_NEW_COPY_Image_f9u9mtb9_ON_');
                                                          if (!FFAppState()
                                                              .citiesPref
                                                              .contains(
                                                                  'New Delhi')) {
                                                            logFirebaseEvent(
                                                                'Image_update_app_state');
                                                            FFAppState()
                                                                .update(() {
                                                              FFAppState()
                                                                  .addToCitiesPref(
                                                                      'New Delhi');
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
                                                                  .circular(
                                                                      100),
                                                          child: Image.network(
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
                                                      .fromSTEB(0, 14, 0, 0),
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
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
                                                                    'Gurugram')
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
                                                              'REQUIREMENTS_NEW_COPY_Image_sr4oxmti_ON_');
                                                          if (!FFAppState()
                                                              .citiesPref
                                                              .contains(
                                                                  'Gurugram')) {
                                                            logFirebaseEvent(
                                                                'Image_update_app_state');
                                                            FFAppState()
                                                                .update(() {
                                                              FFAppState()
                                                                      .gurgaon =
                                                                  false;
                                                              FFAppState()
                                                                  .addToCitiesPref(
                                                                      'Gurugram');
                                                            });
                                                          } else {
                                                            logFirebaseEvent(
                                                                'Image_update_app_state');
                                                            FFAppState()
                                                                .update(() {
                                                              FFAppState()
                                                                      .delhi =
                                                                  false;
                                                              FFAppState()
                                                                  .removeFromCitiesPref(
                                                                      'Gurugram');
                                                            });
                                                          }
                                                        },
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100),
                                                          child: Image.network(
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
                                                      .fromSTEB(0, 14, 0, 0),
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
                                                          color:
                                                              Color(0xFF8E8E8E),
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
                                                                    'Noida')
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
                                                              'REQUIREMENTS_NEW_COPY_Image_fnjmc972_ON_');
                                                          if (!FFAppState()
                                                              .citiesPref
                                                              .contains(
                                                                  'Noida')) {
                                                            logFirebaseEvent(
                                                                'Image_update_app_state');
                                                            FFAppState()
                                                                .update(() {
                                                              FFAppState()
                                                                  .delhi = true;
                                                              FFAppState()
                                                                  .addToCitiesPref(
                                                                      'Noida');
                                                            });
                                                          } else {
                                                            logFirebaseEvent(
                                                                'Image_update_app_state');
                                                            FFAppState()
                                                                .update(() {
                                                              FFAppState()
                                                                      .delhi =
                                                                  false;
                                                              FFAppState()
                                                                  .removeFromCitiesPref(
                                                                      'Noida');
                                                            });
                                                          }
                                                        },
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100),
                                                          child: Image.network(
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
                                                      .fromSTEB(0, 14, 0, 0),
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
                                                          color:
                                                              Color(0xFF8E8E8E),
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
                                                                    'Mumbai')
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
                                                              'REQUIREMENTS_NEW_COPY_Image_u1rwi9me_ON_');
                                                          if (!FFAppState()
                                                              .citiesPref
                                                              .contains(
                                                                  'Mumbai')) {
                                                            logFirebaseEvent(
                                                                'Image_update_app_state');
                                                            FFAppState()
                                                                .update(() {
                                                              FFAppState()
                                                                  .delhi = true;
                                                              FFAppState()
                                                                  .addToCitiesPref(
                                                                      'Mumbai');
                                                            });
                                                          } else {
                                                            logFirebaseEvent(
                                                                'Image_update_app_state');
                                                            FFAppState()
                                                                .update(() {
                                                              FFAppState()
                                                                      .delhi =
                                                                  false;
                                                              FFAppState()
                                                                  .removeFromCitiesPref(
                                                                      'Mumbai');
                                                            });
                                                          }
                                                        },
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100),
                                                          child: Image.network(
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
                                                      .fromSTEB(0, 14, 0, 0),
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
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
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 20, 0, 0),
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
                                                            BorderRadius
                                                                .circular(100),
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
                                                                'REQUIREMENTS_NEW_COPY_Image_cc9vyf6e_ON_');
                                                            if (FFAppState()
                                                                .citiesPref
                                                                .contains(
                                                                    'Delhi')) {
                                                              logFirebaseEvent(
                                                                  'Image_update_app_state');
                                                              FFAppState()
                                                                  .update(() {
                                                                FFAppState()
                                                                        .delhi =
                                                                    true;
                                                                FFAppState()
                                                                    .addToCitiesPref(
                                                                        'Bengaluru, Karnataka');
                                                              });
                                                            } else {
                                                              logFirebaseEvent(
                                                                  'Image_update_app_state');
                                                              FFAppState()
                                                                  .update(() {
                                                                FFAppState()
                                                                        .delhi =
                                                                    false;
                                                                FFAppState()
                                                                    .removeFromCitiesPref(
                                                                        'Bengaluru, Karnataka');
                                                              });
                                                            }
                                                          },
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100),
                                                            child:
                                                                Image.network(
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
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 14, 0, 0),
                                                    child: SelectionArea(
                                                        child: Text(
                                                      'Bengaluru',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                color: Color(
                                                                    0xFF8E8E8E),
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
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
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  InkWell(
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'REQUIREMENTS_NEW_COPY_Container_sp92asoa');
                                                      logFirebaseEvent(
                                                          'Container_update_app_state');
                                                      FFAppState().update(() {
                                                        FFAppState().delhi =
                                                            false;
                                                        FFAppState()
                                                            .addToCitiesPref(
                                                                '');
                                                      });
                                                    },
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100),
                                                          border: Border.all(
                                                            color: FFAppState()
                                                                    .citiesPref
                                                                    .contains(
                                                                        'Chennai')
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor
                                                                : Colors.white,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(4,
                                                                      4, 4, 4),
                                                          child: InkWell(
                                                            onTap: () async {
                                                              logFirebaseEvent(
                                                                  'REQUIREMENTS_NEW_COPY_Image_1lpt3jfm_ON_');
                                                              if (FFAppState()
                                                                  .citiesPref
                                                                  .contains(
                                                                      'Delhi')) {
                                                                logFirebaseEvent(
                                                                    'Image_update_app_state');
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                          .delhi =
                                                                      true;
                                                                  FFAppState()
                                                                      .addToCitiesPref(
                                                                          'Chennai, Tamil Nadu');
                                                                });
                                                              } else {
                                                                logFirebaseEvent(
                                                                    'Image_update_app_state');
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                          .delhi =
                                                                      false;
                                                                  FFAppState()
                                                                      .removeFromCitiesPref(
                                                                          'Chennai, Tamil Nadu');
                                                                });
                                                              }
                                                            },
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          100),
                                                              child:
                                                                  Image.network(
                                                                'https://firebasestorage.googleapis.com/v0/b/hecta-a99ff.appspot.com/o/Cities_requirements%2FChennai.jpg?alt=media&token=d33e7852-2893-40e9-9c58-8bbc1ff9f496',
                                                                width: 47,
                                                                height: 47,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 14, 0, 0),
                                                    child: SelectionArea(
                                                        child: Text(
                                                      'Chennai',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                color: Color(
                                                                    0xFF8E8E8E),
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
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
                                                            BorderRadius
                                                                .circular(100),
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
                                                                'REQUIREMENTS_NEW_COPY_Image_5ybmjgpd_ON_');
                                                            if (FFAppState()
                                                                .citiesPref
                                                                .contains(
                                                                    'Delhi')) {
                                                              logFirebaseEvent(
                                                                  'Image_update_app_state');
                                                              FFAppState()
                                                                  .update(() {
                                                                FFAppState()
                                                                        .delhi =
                                                                    true;
                                                                FFAppState()
                                                                    .addToCitiesPref(
                                                                        'Hyderabad, Telengana');
                                                              });
                                                            } else {
                                                              logFirebaseEvent(
                                                                  'Image_update_app_state');
                                                              FFAppState()
                                                                  .update(() {
                                                                FFAppState()
                                                                        .delhi =
                                                                    false;
                                                                FFAppState()
                                                                    .removeFromCitiesPref(
                                                                        'Hyderabad, Telengana');
                                                              });
                                                            }
                                                          },
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100),
                                                            child:
                                                                Image.network(
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
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 14, 0, 0),
                                                    child: SelectionArea(
                                                        child: Text(
                                                      'Hyderabad',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                color: Color(
                                                                    0xFF8E8E8E),
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
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
                                                            BorderRadius
                                                                .circular(100),
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
                                                                'REQUIREMENTS_NEW_COPY_Image_uhofcdqh_ON_');
                                                            if (FFAppState()
                                                                .citiesPref
                                                                .contains(
                                                                    'Delhi')) {
                                                              logFirebaseEvent(
                                                                  'Image_update_app_state');
                                                              FFAppState()
                                                                  .update(() {
                                                                FFAppState()
                                                                        .delhi =
                                                                    true;
                                                                FFAppState()
                                                                    .addToCitiesPref(
                                                                        'Pune, Maharashtra');
                                                              });
                                                            } else {
                                                              logFirebaseEvent(
                                                                  'Image_update_app_state');
                                                              FFAppState()
                                                                  .update(() {
                                                                FFAppState()
                                                                        .delhi =
                                                                    false;
                                                                FFAppState()
                                                                    .removeFromCitiesPref(
                                                                        'Pune, Maharashtra');
                                                              });
                                                            }
                                                          },
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100),
                                                            child:
                                                                Image.network(
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
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 14, 0, 0),
                                                    child: SelectionArea(
                                                        child: Text(
                                                      'Pune',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
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
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 20, 0, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  InkWell(
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'REQUIREMENTS_NEW_COPY_Container_176upkou');
                                                      logFirebaseEvent(
                                                          'Container_update_app_state');
                                                      FFAppState().update(() {
                                                        FFAppState().delhi =
                                                            false;
                                                        FFAppState()
                                                            .addToCitiesPref(
                                                                '');
                                                      });
                                                    },
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100),
                                                          border: Border.all(
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(4,
                                                                      4, 4, 4),
                                                          child: InkWell(
                                                            onTap: () async {
                                                              logFirebaseEvent(
                                                                  'REQUIREMENTS_NEW_COPY_Image_a70u17fb_ON_');
                                                              if (FFAppState()
                                                                  .citiesPref
                                                                  .contains(
                                                                      'Delhi')) {
                                                                logFirebaseEvent(
                                                                    'Image_update_app_state');
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                          .delhi =
                                                                      true;
                                                                  FFAppState()
                                                                      .addToCitiesPref(
                                                                          'Surat, Gujarat');
                                                                });
                                                              } else {
                                                                logFirebaseEvent(
                                                                    'Image_update_app_state');
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                          .delhi =
                                                                      false;
                                                                  FFAppState()
                                                                      .removeFromCitiesPref(
                                                                          'Surat, Gujarat');
                                                                });
                                                              }
                                                            },
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          100),
                                                              child:
                                                                  Image.network(
                                                                'https://firebasestorage.googleapis.com/v0/b/hecta-a99ff.appspot.com/o/Cities_requirements%2FSurat.jpg?alt=media&token=6140ec51-4a28-40a0-bdb7-d942b95f4279',
                                                                width: 47,
                                                                height: 47,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 14, 0, 0),
                                                    child: SelectionArea(
                                                        child: Text(
                                                      'Surat',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                color: Color(
                                                                    0xFF8E8E8E),
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
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
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  InkWell(
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'REQUIREMENTS_NEW_COPY_Container_t9i41ybq');
                                                      logFirebaseEvent(
                                                          'Container_update_app_state');
                                                      FFAppState().update(() {
                                                        FFAppState().delhi =
                                                            false;
                                                        FFAppState()
                                                            .addToCitiesPref(
                                                                '');
                                                      });
                                                    },
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(4,
                                                                      4, 4, 4),
                                                          child: InkWell(
                                                            onTap: () async {
                                                              logFirebaseEvent(
                                                                  'REQUIREMENTS_NEW_COPY_Image_eweb1rkj_ON_');
                                                              if (FFAppState()
                                                                  .citiesPref
                                                                  .contains(
                                                                      'Delhi')) {
                                                                logFirebaseEvent(
                                                                    'Image_update_app_state');
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                          .delhi =
                                                                      true;
                                                                  FFAppState()
                                                                      .addToCitiesPref(
                                                                          'Goa');
                                                                });
                                                              } else {
                                                                logFirebaseEvent(
                                                                    'Image_update_app_state');
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                          .delhi =
                                                                      false;
                                                                  FFAppState()
                                                                      .removeFromCitiesPref(
                                                                          'Goa');
                                                                });
                                                              }
                                                            },
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          100),
                                                              child:
                                                                  Image.network(
                                                                'https://firebasestorage.googleapis.com/v0/b/hecta-a99ff.appspot.com/o/Cities_requirements%2FGoa.jpg?alt=media&token=7593c07f-be2b-4843-a1e9-4c71937b0bf9',
                                                                width: 47,
                                                                height: 47,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 14, 0, 0),
                                                    child: SelectionArea(
                                                        child: Text(
                                                      'Goa',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
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
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  InkWell(
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'REQUIREMENTS_NEW_COPY_Container_0khc3cs7');
                                                      logFirebaseEvent(
                                                          'Container_update_app_state');
                                                      FFAppState().update(() {
                                                        FFAppState().delhi =
                                                            false;
                                                        FFAppState()
                                                            .addToCitiesPref(
                                                                '');
                                                      });
                                                    },
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100),
                                                          border: Border.all(
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(4,
                                                                      4, 4, 4),
                                                          child: InkWell(
                                                            onTap: () async {
                                                              logFirebaseEvent(
                                                                  'REQUIREMENTS_NEW_COPY_Image_ch06td0p_ON_');
                                                              if (FFAppState()
                                                                  .citiesPref
                                                                  .contains(
                                                                      'Delhi')) {
                                                                logFirebaseEvent(
                                                                    'Image_update_app_state');
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                          .delhi =
                                                                      true;
                                                                  FFAppState()
                                                                      .addToCitiesPref(
                                                                          'Ludhiana, Punjab');
                                                                });
                                                              } else {
                                                                logFirebaseEvent(
                                                                    'Image_update_app_state');
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                          .delhi =
                                                                      false;
                                                                  FFAppState()
                                                                      .removeFromCitiesPref(
                                                                          'Ludhiana, Punjab');
                                                                });
                                                              }
                                                            },
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          100),
                                                              child:
                                                                  Image.network(
                                                                'https://firebasestorage.googleapis.com/v0/b/hecta-a99ff.appspot.com/o/Cities_requirements%2FLudhiana.jpg?alt=media&token=46a3ba1d-7908-49b2-8f0a-6ad84dd9d665',
                                                                width: 47,
                                                                height: 47,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 14, 0, 0),
                                                    child: SelectionArea(
                                                        child: Text(
                                                      'Ludhiana',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                color: Color(
                                                                    0xFF8E8E8E),
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
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
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  InkWell(
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'REQUIREMENTS_NEW_COPY_Container_17axqa49');
                                                      logFirebaseEvent(
                                                          'Container_update_app_state');
                                                      FFAppState().update(() {
                                                        FFAppState().delhi =
                                                            false;
                                                        FFAppState()
                                                            .addToCitiesPref(
                                                                '');
                                                      });
                                                    },
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100),
                                                          border: Border.all(
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(4,
                                                                      4, 4, 4),
                                                          child: InkWell(
                                                            onTap: () async {
                                                              logFirebaseEvent(
                                                                  'REQUIREMENTS_NEW_COPY_Image_5jx405bw_ON_');
                                                              if (FFAppState()
                                                                  .citiesPref
                                                                  .contains(
                                                                      'Delhi')) {
                                                                logFirebaseEvent(
                                                                    'Image_update_app_state');
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                          .delhi =
                                                                      true;
                                                                  FFAppState()
                                                                      .addToCitiesPref(
                                                                          'Dehradun, Uttrakhand');
                                                                });
                                                              } else {
                                                                logFirebaseEvent(
                                                                    'Image_update_app_state');
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                          .delhi =
                                                                      false;
                                                                  FFAppState()
                                                                      .removeFromCitiesPref(
                                                                          'Dehradun, Uttrakhand');
                                                                });
                                                              }
                                                            },
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          100),
                                                              child:
                                                                  Image.network(
                                                                'https://firebasestorage.googleapis.com/v0/b/hecta-a99ff.appspot.com/o/Cities_requirements%2FDehradun.jpg?alt=media&token=9d05b49c-cee3-4bc9-99ee-dd05175cc3ae',
                                                                width: 47,
                                                                height: 47,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 14, 0, 0),
                                                    child: SelectionArea(
                                                        child: Text(
                                                      'Dehradun',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                color: Color(
                                                                    0xFF8E8E8E),
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
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
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 28, 0, 0),
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
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 20, 0, 0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 70,
                                            child: custom_widgets.TwowaySilder(
                                              width: double.infinity,
                                              height: 70,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
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
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 15, 0, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  InkWell(
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'REQUIREMENTS_NEW_COPY_Row_rrx68bet_ON_TA');
                                                      if (FFAppState().al) {
                                                        logFirebaseEvent(
                                                            'Row_update_app_state');
                                                        FFAppState().update(() {
                                                          FFAppState().al =
                                                              false;
                                                        });
                                                      } else {
                                                        logFirebaseEvent(
                                                            'Row_update_app_state');
                                                        FFAppState().update(() {
                                                          FFAppState().al =
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
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 5, 0, 0),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'REQUIREMENTS_NEW_COPY_Row_7epyuic4_ON_TA');
                                                        if (FFAppState().cs) {
                                                          logFirebaseEvent(
                                                              'Row_update_app_state');
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState().cs =
                                                                false;
                                                          });
                                                        } else {
                                                          logFirebaseEvent(
                                                              'Row_update_app_state');
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState().cs =
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
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        10,
                                                                        0),
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
                                                                          BorderRadius.circular(
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
                                                                      .csValue ??= (currentUserDocument
                                                                              ?.propertyType
                                                                              ?.toList() ??
                                                                          [])
                                                                      .contains(
                                                                          'Commercial Space'),
                                                                  onChanged:
                                                                      (newValue) async {
                                                                    setState(() =>
                                                                        _model.csValue =
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
                                                            'Commercial Space',
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
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 5, 0, 0),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'REQUIREMENTS_NEW_COPY_Row_vqq6qc25_ON_TA');
                                                        if (FFAppState().il) {
                                                          logFirebaseEvent(
                                                              'Row_update_app_state');
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState().il =
                                                                false;
                                                          });
                                                        } else {
                                                          logFirebaseEvent(
                                                              'Row_update_app_state');
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState().il =
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
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        10,
                                                                        0),
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
                                                                          BorderRadius.circular(
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
                                                                      .ilValue ??= (currentUserDocument
                                                                              ?.propertyType
                                                                              ?.toList() ??
                                                                          [])
                                                                      .contains(
                                                                          'Industrial Land'),
                                                                  onChanged:
                                                                      (newValue) async {
                                                                    setState(() =>
                                                                        _model.ilValue =
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
                                                            'Industrial Land',
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
                                                          'REQUIREMENTS_NEW_COPY_Row_z97bsmmu_ON_TA');
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
                                                          FFAppState().lnb =
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
                                                                  .fromSTEB(0,
                                                                      5, 0, 0),
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
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 5, 0, 0),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'REQUIREMENTS_NEW_COPY_Row_bmu4iis9_ON_TA');
                                                        if (FFAppState().rf) {
                                                          logFirebaseEvent(
                                                              'Row_update_app_state');
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState().rf =
                                                                false;
                                                          });
                                                        } else {
                                                          logFirebaseEvent(
                                                              'Row_update_app_state');
                                                          FFAppState()
                                                              .update(() {
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
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        10,
                                                                        0),
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
                                                                          BorderRadius.circular(
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
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 5, 0, 0),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'REQUIREMENTS_NEW_COPY_Row_ggtrlmpv_ON_TA');
                                                        if (FFAppState().rp) {
                                                          logFirebaseEvent(
                                                              'Row_update_app_state');
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState().rp =
                                                                false;
                                                          });
                                                        } else {
                                                          logFirebaseEvent(
                                                              'Row_update_app_state');
                                                          FFAppState()
                                                              .update(() {
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
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        10,
                                                                        0),
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
                                                                          BorderRadius.circular(
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
                                                ],
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  InkWell(
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'REQUIREMENTS_NEW_COPY_Row_tw5o757x_ON_TA');
                                                      if (FFAppState().cp) {
                                                        logFirebaseEvent(
                                                            'Row_update_app_state');
                                                        FFAppState().update(() {
                                                          FFAppState().cp =
                                                              false;
                                                        });
                                                      } else {
                                                        logFirebaseEvent(
                                                            'Row_update_app_state');
                                                        FFAppState().update(() {
                                                          FFAppState().cp =
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
                                                                  .cpValue ??= (currentUserDocument
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
                                                                  .fromSTEB(10,
                                                                      0, 0, 0),
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
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 5, 0, 0),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'REQUIREMENTS_NEW_COPY_Row_3y81yl9n_ON_TA');
                                                        if (FFAppState().ih) {
                                                          logFirebaseEvent(
                                                              'Row_update_app_state');
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState().ih =
                                                                false;
                                                          });
                                                        } else {
                                                          logFirebaseEvent(
                                                              'Row_update_app_state');
                                                          FFAppState()
                                                              .update(() {
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
                                                                    .fromSTEB(
                                                                        10,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child:
                                                                SelectionArea(
                                                                    child: Text(
                                                              'Independent House',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family,
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyText1Family),
                                                                  ),
                                                            )),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 5, 0, 0),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'REQUIREMENTS_NEW_COPY_Row_53zbk88g_ON_TA');
                                                        if (FFAppState().ip) {
                                                          logFirebaseEvent(
                                                              'Row_update_app_state');
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState().ip =
                                                                false;
                                                          });
                                                        } else {
                                                          logFirebaseEvent(
                                                              'Row_update_app_state');
                                                          FFAppState()
                                                              .update(() {
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
                                                                    .fromSTEB(
                                                                        10,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child:
                                                                SelectionArea(
                                                                    child: Text(
                                                              'Industrial Plot',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family,
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyText1Family),
                                                                  ),
                                                            )),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 5, 0, 0),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'REQUIREMENTS_NEW_COPY_Row_9mivttjv_ON_TA');
                                                        if (FFAppState().off) {
                                                          logFirebaseEvent(
                                                              'Row_update_app_state');
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState().off =
                                                                false;
                                                          });
                                                        } else {
                                                          logFirebaseEvent(
                                                              'Row_update_app_state');
                                                          FFAppState()
                                                              .update(() {
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
                                                                    .fromSTEB(
                                                                        10,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child:
                                                                SelectionArea(
                                                                    child: Text(
                                                              'Office',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family,
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyText1Family),
                                                                  ),
                                                            )),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 5, 0, 0),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'REQUIREMENTS_NEW_COPY_Row_yv2ss278_ON_TA');
                                                        if (FFAppState().rl) {
                                                          logFirebaseEvent(
                                                              'Row_update_app_state');
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState().rl =
                                                                false;
                                                          });
                                                        } else {
                                                          logFirebaseEvent(
                                                              'Row_update_app_state');
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState().rl =
                                                                true;
                                                          });
                                                        }
                                                      },
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
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
                                                                    .rlValue ??= (currentUserDocument
                                                                            ?.propertyType
                                                                            ?.toList() ??
                                                                        [])
                                                                    .contains(
                                                                        'Residential Land'),
                                                                onChanged:
                                                                    (newValue) async {
                                                                  setState(() =>
                                                                      _model.rlValue =
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
                                                                    .fromSTEB(
                                                                        10,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child:
                                                                SelectionArea(
                                                                    child: Text(
                                                              'Residential Land',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family,
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyText1Family),
                                                                  ),
                                                            )),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 5, 0, 0),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'REQUIREMENTS_NEW_COPY_Row_g8srm3rp_ON_TA');
                                                        if (FFAppState().sh) {
                                                          logFirebaseEvent(
                                                              'Row_update_app_state');
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState().sh =
                                                                false;
                                                          });
                                                        } else {
                                                          logFirebaseEvent(
                                                              'Row_update_app_state');
                                                          FFAppState()
                                                              .update(() {
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
                                                                    .shopValue ??= (currentUserDocument
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
                                                                    .fromSTEB(
                                                                        10,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child:
                                                                SelectionArea(
                                                                    child: Text(
                                                              'Shop',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family,
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyText1Family),
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 30, 0, 0),
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
                                                      'REQUIREMENTS_NEW_COPY_SAVE_BTN_ON_TAP');
                                                  logFirebaseEvent(
                                                      'Button_backend_call');

                                                  final userUpdateData = {
                                                    ...createUserRecordData(
                                                      budgetFrom: FFAppState()
                                                          .maxBudgetNew,
                                                      budgetTo: '',
                                                    ),
                                                    'cities':
                                                        FFAppState().citiesPref,
                                                  };
                                                  await currentUserReference!
                                                      .update(userUpdateData);
                                                  logFirebaseEvent(
                                                      'Button_show_snack_bar');
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                      content: Text(
                                                        'Saved!',
                                                        style: TextStyle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                      ),
                                                      duration: Duration(
                                                          milliseconds: 4000),
                                                      backgroundColor:
                                                          Color(0x00000000),
                                                    ),
                                                  );
                                                },
                                                text: 'Save',
                                                options: FFButtonOptions(
                                                  width: 130,
                                                  height: 40,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .subtitle2
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .subtitle2Family,
                                                            color: Colors.white,
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            useGoogleFonts: GoogleFonts
                                                                    .asMap()
                                                                .containsKey(
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle2Family),
                                                          ),
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(5),
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
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          wrapWithModel(
                            model: _model.bottomNavPrefModel,
                            updateCallback: () => setState(() {}),
                            child: BottomNavPrefWidget(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ));
      },
    );
  }
}
