import '../auth/firebase_user_provider.dart';
import '../backend/backend.dart';
import '../components/loader_widget.dart';
import '../flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../custom_code/widgets/index.dart' as custom_widgets;
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'filters_new_copy_model.dart';
export 'filters_new_copy_model.dart';

class FiltersNewCopyWidget extends StatefulWidget {
  const FiltersNewCopyWidget({
    Key? key,
    this.fromSearch,
    this.props,
    this.carousels,
    this.main,
    this.fav,
    this.eoi,
    this.trending,
    this.similar,
    this.searchkeyword,
    this.carouselsTitle,
    this.similarCity,
    this.similarType,
  }) : super(key: key);

  final bool? fromSearch;
  final List<PropertiesRecord>? props;
  final bool? carousels;
  final bool? main;
  final bool? fav;
  final bool? eoi;
  final bool? trending;
  final bool? similar;
  final String? searchkeyword;
  final String? carouselsTitle;
  final String? similarCity;
  final String? similarType;

  @override
  _FiltersNewCopyWidgetState createState() => _FiltersNewCopyWidgetState();
}

class _FiltersNewCopyWidgetState extends State<FiltersNewCopyWidget> {
  late FiltersNewCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FiltersNewCopyModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'FiltersNewCopy'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('FILTERS_NEW_COPY_FiltersNewCopy_ON_LOAD');
      logFirebaseEvent('FiltersNewCopy_update_app_state');
      FFAppState().update(() {
        FFAppState().selectedStates = FFAppState().filterState.length == 0
            ? functions.removeDuplicates(widget.props!
                .where((e) => FFAppState().filterCity.contains(e.city))
                .toList()
                .map((e) => e.state)
                .withoutNulls
                .toList()
                .toList())
            : FFAppState().filterState.toList();
        FFAppState().selectedCities = FFAppState().filterCity.toList();
        FFAppState().selectedLocs = FFAppState().filterArea.toList();
        FFAppState().selectedTypes = FFAppState().filterType.toList();
        FFAppState().selectedminBudget = FFAppState().filterMinBudget;
        FFAppState().selectedmaxBudget = FFAppState().filterMaxBudget;
        FFAppState().selectedBanks = FFAppState().filterBanks.toList();
        FFAppState().selectedprivateTreaty = FFAppState().filterPrivateTreaty;
      });
      logFirebaseEvent('FiltersNewCopy_update_app_state');
      FFAppState().update(() {
        FFAppState().selectedAppDateStart =
            FFAppState().filterAppDateStart != null
                ? FFAppState().filterAppDateStart
                : getCurrentTimestamp;
        FFAppState().selectedAppDateEnd = FFAppState().filterAppDateEnd != null
            ? FFAppState().filterAppDateEnd
            : getCurrentTimestamp;
        FFAppState().selectedAucDateStart =
            FFAppState().filterAucDateStart != null
                ? FFAppState().filterAucDateStart
                : getCurrentTimestamp;
        FFAppState().selectedAucDateEnd = FFAppState().filterAucDateEnd;
        FFAppState().selectedAllowOpen = FFAppState().filterallowOpen;
      });
    });

    _model.textController1 ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
    _model.textController3 ??= TextEditingController();
    _model.textController4 ??= TextEditingController();
    _model.textController5 ??= TextEditingController();
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
            child: LoaderWidget(),
          );
        }
        List<PropertiesRecord> filtersNewCopyPropertiesRecordList =
            snapshot.data!;
        return Title(
            title: 'FiltersNewCopy',
            color: FlutterFlowTheme.of(context).primaryColor,
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              body: SafeArea(
                child: GestureDetector(
                  onTap: () =>
                      FocusScope.of(context).requestFocus(_unfocusNode),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
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
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15, 15, 15, 15),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  InkWell(
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'FILTERS_NEW_COPY_Icon_q39k0ubq_ON_TAP');
                                      logFirebaseEvent('Icon_navigate_back');
                                      context.pop();
                                    },
                                    child: Icon(
                                      Icons.arrow_back_sharp,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 24,
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15, 0, 0, 2),
                                          child: Text(
                                            'Filters',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyText1Family,
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1Family),
                                                ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'FILTERS_NEW_COPY_Text_533hhter_ON_TAP');
                                            logFirebaseEvent(
                                                'Text_update_app_state');
                                            FFAppState().update(() {
                                              FFAppState().selectedStates = [];
                                              FFAppState().selectedLocs = [];
                                              FFAppState().selectedCities = [];
                                              FFAppState().selectedTypes = [];
                                              FFAppState().selectedBanks = [];
                                              FFAppState().selectedminBudget =
                                                  '0';
                                              FFAppState().selectedmaxBudget =
                                                  '1000Cr+';
                                              FFAppState()
                                                      .selectedprivateTreaty =
                                                  false;
                                            });
                                            logFirebaseEvent(
                                                'Text_update_app_state');
                                            FFAppState().update(() {
                                              FFAppState()
                                                      .selectedAppDateStart =
                                                  getCurrentTimestamp;
                                              FFAppState().selectedAppDateEnd =
                                                  getCurrentTimestamp;
                                              FFAppState()
                                                      .selectedAucDateStart =
                                                  getCurrentTimestamp;
                                              FFAppState().selectedAucDateEnd =
                                                  getCurrentTimestamp;
                                              FFAppState().selectedAllowOpen =
                                                  true;
                                            });
                                          },
                                          child: Text(
                                            'Clear All',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyText1Family,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1Family),
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
                        ],
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 5, 15, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          width: double.infinity,
                                          color: Colors.white,
                                          child: ExpandableNotifier(
                                            initialExpanded: false,
                                            child: ExpandablePanel(
                                              header: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Application Date',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title1
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .title1Family,
                                                          color: Colors.black,
                                                          fontSize: 16,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .title1Family),
                                                        ),
                                                  ),
                                                ],
                                              ),
                                              collapsed: Container(
                                                height: 1,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              expanded: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  InkWell(
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'FILTERS_NEW_COPY_Row_37lem09o_ON_TAP');
                                                      logFirebaseEvent(
                                                          'Row_date_time_picker');
                                                      final _datePicked1Date =
                                                          await showDatePicker(
                                                        context: context,
                                                        initialDate: FFAppState()
                                                                    .selectedAppDateStart !=
                                                                null
                                                            ? FFAppState()
                                                                .selectedAppDateStart!
                                                            : getCurrentTimestamp,
                                                        firstDate:
                                                            DateTime(1900),
                                                        lastDate:
                                                            DateTime(2050),
                                                      );

                                                      if (_datePicked1Date !=
                                                          null) {
                                                        setState(() {
                                                          _model.datePicked1 =
                                                              DateTime(
                                                            _datePicked1Date
                                                                .year,
                                                            _datePicked1Date
                                                                .month,
                                                            _datePicked1Date
                                                                .day,
                                                          );
                                                        });
                                                      }
                                                      logFirebaseEvent(
                                                          'Row_update_app_state');
                                                      FFAppState().update(() {
                                                        FFAppState()
                                                                .selectedAppDateStart =
                                                            _model.datePicked1;
                                                      });
                                                    },
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        FaIcon(
                                                          FontAwesomeIcons
                                                              .solidCalendarAlt,
                                                          color:
                                                              Color(0xFF7AC5CD),
                                                          size: 20,
                                                        ),
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              _model.datePicked1 !=
                                                                      null
                                                                  ? dateTimeFormat(
                                                                      'yMMMd',
                                                                      _model
                                                                          .datePicked1,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    )
                                                                  : dateTimeFormat(
                                                                      'yMMMd',
                                                                      FFAppState()
                                                                          .selectedAucDateStart,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 16,
                                                    child: VerticalDivider(
                                                      thickness: 1,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'FILTERS_NEW_COPY_Row_lp3nmb9y_ON_TAP');
                                                      logFirebaseEvent(
                                                          'Row_date_time_picker');
                                                      final _datePicked2Date =
                                                          await showDatePicker(
                                                        context: context,
                                                        initialDate: FFAppState()
                                                                    .selectedAppDateEnd !=
                                                                null
                                                            ? FFAppState()
                                                                .selectedAppDateEnd!
                                                            : getCurrentTimestamp,
                                                        firstDate:
                                                            DateTime(1900),
                                                        lastDate:
                                                            DateTime(2050),
                                                      );

                                                      if (_datePicked2Date !=
                                                          null) {
                                                        setState(() {
                                                          _model.datePicked2 =
                                                              DateTime(
                                                            _datePicked2Date
                                                                .year,
                                                            _datePicked2Date
                                                                .month,
                                                            _datePicked2Date
                                                                .day,
                                                          );
                                                        });
                                                      }
                                                      logFirebaseEvent(
                                                          'Row_update_app_state');
                                                      FFAppState().update(() {
                                                        FFAppState()
                                                                .selectedAppDateEnd =
                                                            _model.datePicked2;
                                                      });
                                                    },
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        FaIcon(
                                                          FontAwesomeIcons
                                                              .solidCalendarAlt,
                                                          color:
                                                              Color(0xFF7AC5CD),
                                                          size: 20,
                                                        ),
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              _model.datePicked2 !=
                                                                      null
                                                                  ? dateTimeFormat(
                                                                      'yMMMd',
                                                                      _model
                                                                          .datePicked2,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    )
                                                                  : dateTimeFormat(
                                                                      'yMMMd',
                                                                      FFAppState()
                                                                          .selectedAppDateEnd,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              theme: ExpandableThemeData(
                                                tapHeaderToExpand: true,
                                                tapBodyToExpand: false,
                                                tapBodyToCollapse: false,
                                                headerAlignment:
                                                    ExpandablePanelHeaderAlignment
                                                        .center,
                                                hasIcon: true,
                                                expandIcon: Icons.add_sharp,
                                                collapseIcon:
                                                    FontAwesomeIcons.minus,
                                                iconSize: 20,
                                                iconColor: Color(0xFF091E25),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15, 18, 15, 0),
                                child: Container(
                                  width: double.infinity,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFBCBCBC),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 5, 15, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          width: double.infinity,
                                          color: Colors.white,
                                          child: ExpandableNotifier(
                                            initialExpanded: false,
                                            child: ExpandablePanel(
                                              header: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Auction Date',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title1
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .title1Family,
                                                          color: Colors.black,
                                                          fontSize: 16,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .title1Family),
                                                        ),
                                                  ),
                                                ],
                                              ),
                                              collapsed: Container(
                                                height: 1,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              expanded: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  InkWell(
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'FILTERS_NEW_COPY_Row_oydpayzr_ON_TAP');
                                                      logFirebaseEvent(
                                                          'Row_date_time_picker');
                                                      final _datePicked3Date =
                                                          await showDatePicker(
                                                        context: context,
                                                        initialDate: FFAppState()
                                                                    .selectedAucDateStart !=
                                                                null
                                                            ? FFAppState()
                                                                .selectedAucDateStart!
                                                            : getCurrentTimestamp,
                                                        firstDate:
                                                            DateTime(1900),
                                                        lastDate:
                                                            DateTime(2050),
                                                      );

                                                      if (_datePicked3Date !=
                                                          null) {
                                                        setState(() {
                                                          _model.datePicked3 =
                                                              DateTime(
                                                            _datePicked3Date
                                                                .year,
                                                            _datePicked3Date
                                                                .month,
                                                            _datePicked3Date
                                                                .day,
                                                          );
                                                        });
                                                      }
                                                      logFirebaseEvent(
                                                          'Row_update_app_state');
                                                      FFAppState().update(() {
                                                        FFAppState()
                                                                .selectedAucDateStart =
                                                            _model.datePicked3;
                                                      });
                                                    },
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        FaIcon(
                                                          FontAwesomeIcons
                                                              .solidCalendarAlt,
                                                          color:
                                                              Color(0xFF7AC5CD),
                                                          size: 20,
                                                        ),
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              _model.datePicked3 !=
                                                                      null
                                                                  ? dateTimeFormat(
                                                                      'yMMMd',
                                                                      _model
                                                                          .datePicked3,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    )
                                                                  : dateTimeFormat(
                                                                      'yMMMd',
                                                                      FFAppState()
                                                                          .selectedAucDateStart,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 16,
                                                    child: VerticalDivider(
                                                      thickness: 1,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'FILTERS_NEW_COPY_Row_iq9qh3rh_ON_TAP');
                                                      logFirebaseEvent(
                                                          'Row_date_time_picker');
                                                      final _datePicked4Date =
                                                          await showDatePicker(
                                                        context: context,
                                                        initialDate: FFAppState()
                                                                    .selectedAucDateEnd !=
                                                                null
                                                            ? FFAppState()
                                                                .selectedAucDateEnd!
                                                            : getCurrentTimestamp,
                                                        firstDate:
                                                            DateTime(1900),
                                                        lastDate:
                                                            DateTime(2050),
                                                      );

                                                      if (_datePicked4Date !=
                                                          null) {
                                                        setState(() {
                                                          _model.datePicked4 =
                                                              DateTime(
                                                            _datePicked4Date
                                                                .year,
                                                            _datePicked4Date
                                                                .month,
                                                            _datePicked4Date
                                                                .day,
                                                          );
                                                        });
                                                      }
                                                      logFirebaseEvent(
                                                          'Row_update_app_state');
                                                      FFAppState().update(() {
                                                        FFAppState()
                                                                .selectedAucDateEnd =
                                                            _model.datePicked4;
                                                      });
                                                    },
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        FaIcon(
                                                          FontAwesomeIcons
                                                              .solidCalendarAlt,
                                                          color:
                                                              Color(0xFF7AC5CD),
                                                          size: 20,
                                                        ),
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              _model.datePicked4 !=
                                                                      null
                                                                  ? dateTimeFormat(
                                                                      'yMMMd',
                                                                      _model
                                                                          .datePicked4,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    )
                                                                  : dateTimeFormat(
                                                                      'yMMMd',
                                                                      FFAppState()
                                                                          .selectedAucDateEnd,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              theme: ExpandableThemeData(
                                                tapHeaderToExpand: true,
                                                tapBodyToExpand: false,
                                                tapBodyToCollapse: false,
                                                headerAlignment:
                                                    ExpandablePanelHeaderAlignment
                                                        .center,
                                                hasIcon: true,
                                                expandIcon: Icons.add_sharp,
                                                collapseIcon:
                                                    FontAwesomeIcons.minus,
                                                iconSize: 20,
                                                iconColor: Color(0xFF091E25),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              if (!loggedIn)
                                Theme(
                                  data: ThemeData(
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context)
                                            .primaryText,
                                  ),
                                  child: CheckboxListTile(
                                    value: _model.allowopenValue ??=
                                        FFAppState().selectedAllowOpen,
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          _model.allowopenValue = newValue!);
                                    },
                                    title: Text(
                                      'Show dates which are open',
                                      style: FlutterFlowTheme.of(context)
                                          .title3
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .title3Family,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .title3Family),
                                          ),
                                    ),
                                    activeColor: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    checkColor: Colors.white,
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                  ),
                                ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15, 10, 15, 0),
                                child: Container(
                                  width: double.infinity,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFBCBCBC),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 5, 15, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          width: double.infinity,
                                          color: Colors.white,
                                          child: ExpandableNotifier(
                                            initialExpanded: false,
                                            child: ExpandablePanel(
                                              header: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'State ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title1
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .title1Family,
                                                          color: Colors.black,
                                                          fontSize: 16,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .title1Family),
                                                        ),
                                                  ),
                                                  if (FFAppState()
                                                          .selectedStates
                                                          .length !=
                                                      0)
                                                    Text(
                                                      '(${FFAppState().selectedStates.length.toString()})',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                    ),
                                                ],
                                              ),
                                              collapsed: Container(
                                                height: 1,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              expanded: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 15, 0, 0),
                                                    child: Autocomplete<String>(
                                                      initialValue:
                                                          TextEditingValue(),
                                                      optionsBuilder:
                                                          (textEditingValue) {
                                                        if (textEditingValue
                                                                .text ==
                                                            '') {
                                                          return const Iterable<
                                                              String>.empty();
                                                        }
                                                        return functions
                                                            .removeDuplicates(
                                                                filtersNewCopyPropertiesRecordList
                                                                    .map((e) =>
                                                                        e.state)
                                                                    .withoutNulls
                                                                    .toList())
                                                            .toList()
                                                            .where((option) {
                                                          final lowercaseOption =
                                                              option
                                                                  .toLowerCase();
                                                          return lowercaseOption
                                                              .contains(
                                                                  textEditingValue
                                                                      .text
                                                                      .toLowerCase());
                                                        });
                                                      },
                                                      optionsViewBuilder:
                                                          (context, onSelected,
                                                              options) {
                                                        return AutocompleteOptionsList(
                                                          textFieldKey: _model
                                                              .textFieldKey1,
                                                          textController: _model
                                                              .textController1!,
                                                          options:
                                                              options.toList(),
                                                          onSelected:
                                                              onSelected,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyText1,
                                                          textHighlightStyle:
                                                              TextStyle(),
                                                          elevation: 4,
                                                          optionBackgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryBackground,
                                                          optionHighlightColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondaryBackground,
                                                          maxHeight: 200,
                                                        );
                                                      },
                                                      onSelected:
                                                          (String selection) {
                                                        setState(() => _model
                                                                .textFieldSelectedOption1 =
                                                            selection);
                                                        FocusScope.of(context)
                                                            .unfocus();
                                                      },
                                                      fieldViewBuilder: (
                                                        context,
                                                        textEditingController,
                                                        focusNode,
                                                        onEditingComplete,
                                                      ) {
                                                        _model.textController1 =
                                                            textEditingController;
                                                        return TextFormField(
                                                          key: _model
                                                              .textFieldKey1,
                                                          controller:
                                                              textEditingController,
                                                          focusNode: focusNode,
                                                          onEditingComplete:
                                                              onEditingComplete,
                                                          onChanged: (_) =>
                                                              EasyDebounce
                                                                  .debounce(
                                                            '_model.textController1',
                                                            Duration(
                                                                milliseconds:
                                                                    2000),
                                                            () async {
                                                              logFirebaseEvent(
                                                                  'FILTERS_NEW_COPY_TextField_sk8ehw4e_ON_T');
                                                              if (_model
                                                                      .textController1
                                                                      .text ==
                                                                  _model
                                                                      .textFieldSelectedOption1) {
                                                                logFirebaseEvent(
                                                                    'TextField_update_app_state');
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                      .addToSelectedStates(
                                                                          _model
                                                                              .textFieldSelectedOption1!);
                                                                });
                                                              }
                                                            },
                                                          ),
                                                          onFieldSubmitted:
                                                              (_) async {
                                                            logFirebaseEvent(
                                                                'FILTERS_NEW_COPY_TextField_sk8ehw4e_ON_T');
                                                            logFirebaseEvent(
                                                                'TextField_update_app_state');
                                                            FFAppState()
                                                                .update(() {
                                                              FFAppState()
                                                                  .addToSelectedStates(
                                                                      _model
                                                                          .textFieldSelectedOption1!);
                                                            });
                                                          },
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            hintText:
                                                                'Search by State',
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText2,
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0xFFA0A0A0),
                                                                width: 1,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                            errorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                            focusedErrorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                            contentPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16,
                                                                        0,
                                                                        0,
                                                                        0),
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1,
                                                          validator: _model
                                                              .textController1Validator
                                                              .asValidator(
                                                                  context),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1, 0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 10, 0, 0),
                                                      child: Builder(
                                                        builder: (context) {
                                                          final states = functions
                                                              .removeDuplicates(widget
                                                                  .props!
                                                                  .map((e) =>
                                                                      e.state)
                                                                  .withoutNulls
                                                                  .toList())
                                                              .toList();
                                                          return Wrap(
                                                            spacing: 5,
                                                            runSpacing: 5,
                                                            alignment:
                                                                WrapAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                WrapCrossAlignment
                                                                    .start,
                                                            direction:
                                                                Axis.horizontal,
                                                            runAlignment:
                                                                WrapAlignment
                                                                    .start,
                                                            verticalDirection:
                                                                VerticalDirection
                                                                    .down,
                                                            clipBehavior:
                                                                Clip.none,
                                                            children:
                                                                List.generate(
                                                                    states
                                                                        .length,
                                                                    (statesIndex) {
                                                              final statesItem =
                                                                  states[
                                                                      statesIndex];
                                                              return InkWell(
                                                                onTap:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'FILTERS_NEW_COPY_Container_221s0skg_ON_T');
                                                                  if (FFAppState()
                                                                      .selectedStates
                                                                      .contains(
                                                                          statesItem)) {
                                                                    logFirebaseEvent(
                                                                        'Container_update_app_state');
                                                                    FFAppState()
                                                                        .update(
                                                                            () {
                                                                      FFAppState()
                                                                          .removeFromSelectedStates(
                                                                              statesItem);
                                                                    });
                                                                  } else {
                                                                    logFirebaseEvent(
                                                                        'Container_update_app_state');
                                                                    FFAppState()
                                                                        .update(
                                                                            () {
                                                                      FFAppState()
                                                                          .addToSelectedStates(
                                                                              statesItem);
                                                                    });
                                                                  }
                                                                },
                                                                child:
                                                                    Container(
                                                                  height: 30,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: valueOrDefault<
                                                                        Color>(
                                                                      FFAppState()
                                                                              .selectedStates
                                                                              .contains(
                                                                                  statesItem)
                                                                          ? Color(
                                                                              0xFF7AC5CD)
                                                                          : Color(
                                                                              0xFFF4F4F4),
                                                                      Color(
                                                                          0xFFF4F4F4),
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(5),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color(
                                                                          0xFFBCBCBC),
                                                                    ),
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            10,
                                                                            5,
                                                                            10,
                                                                            5),
                                                                        child:
                                                                            Text(
                                                                          statesItem,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                color: FFAppState().selectedStates.contains(statesItem) ? Colors.white : Color(0xFF091E25),
                                                                                fontSize: 12,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              );
                                                            }),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 10, 0, 0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        InkWell(
                                                          onTap: () async {
                                                            logFirebaseEvent(
                                                                'FILTERS_NEW_COPY_Text_8e5xha7s_ON_TAP');
                                                            logFirebaseEvent(
                                                                'Text_update_app_state');
                                                            FFAppState()
                                                                .update(() {
                                                              FFAppState()
                                                                  .selectedStates = [];
                                                              FFAppState()
                                                                  .selectedLocs = [];
                                                              FFAppState()
                                                                  .selectedCities = [];
                                                              FFAppState()
                                                                      .clearfilter =
                                                                  true;
                                                            });
                                                          },
                                                          child: Text(
                                                            'Clear Filter',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family,
                                                                  color: Color(
                                                                      0xFF8E8E8E),
                                                                  fontSize: 14,
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
                                                  ),
                                                ],
                                              ),
                                              theme: ExpandableThemeData(
                                                tapHeaderToExpand: true,
                                                tapBodyToExpand: false,
                                                tapBodyToCollapse: false,
                                                headerAlignment:
                                                    ExpandablePanelHeaderAlignment
                                                        .center,
                                                hasIcon: true,
                                                expandIcon: Icons.add_sharp,
                                                collapseIcon:
                                                    FontAwesomeIcons.minus,
                                                iconSize: 20,
                                                iconColor: Color(0xFF091E25),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15, 18, 15, 0),
                                child: Container(
                                  width: double.infinity,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFBCBCBC),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 5, 15, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          width: double.infinity,
                                          color: Colors.white,
                                          child: ExpandableNotifier(
                                            initialExpanded: false,
                                            child: ExpandablePanel(
                                              header: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'City ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title1
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .title1Family,
                                                          color: Colors.black,
                                                          fontSize: 16,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .title1Family),
                                                        ),
                                                  ),
                                                  if (FFAppState()
                                                          .selectedCities
                                                          .length !=
                                                      0)
                                                    Text(
                                                      '(${FFAppState().selectedCities.length.toString()})',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                    ),
                                                ],
                                              ),
                                              collapsed: Container(
                                                height: 1,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              expanded: Container(
                                                decoration: BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 15, 0, 0),
                                                      child:
                                                          Autocomplete<String>(
                                                        initialValue:
                                                            TextEditingValue(),
                                                        optionsBuilder:
                                                            (textEditingValue) {
                                                          if (textEditingValue
                                                                  .text ==
                                                              '') {
                                                            return const Iterable<
                                                                String>.empty();
                                                          }
                                                          return functions
                                                              .removeDuplicates(filtersNewCopyPropertiesRecordList
                                                                  .where((e) => FFAppState()
                                                                      .selectedStates
                                                                      .contains(e
                                                                          .state))
                                                                  .toList()
                                                                  .map((e) =>
                                                                      e.city)
                                                                  .withoutNulls
                                                                  .toList())
                                                              .toList()
                                                              .where((option) {
                                                            final lowercaseOption =
                                                                option
                                                                    .toLowerCase();
                                                            return lowercaseOption
                                                                .contains(
                                                                    textEditingValue
                                                                        .text
                                                                        .toLowerCase());
                                                          });
                                                        },
                                                        optionsViewBuilder:
                                                            (context,
                                                                onSelected,
                                                                options) {
                                                          return AutocompleteOptionsList(
                                                            textFieldKey: _model
                                                                .textFieldKey2,
                                                            textController: _model
                                                                .textController2!,
                                                            options: options
                                                                .toList(),
                                                            onSelected:
                                                                onSelected,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1,
                                                            textHighlightStyle:
                                                                TextStyle(),
                                                            elevation: 4,
                                                            optionBackgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                            optionHighlightColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                            maxHeight: 200,
                                                          );
                                                        },
                                                        onSelected:
                                                            (String selection) {
                                                          setState(() => _model
                                                                  .textFieldSelectedOption2 =
                                                              selection);
                                                          FocusScope.of(context)
                                                              .unfocus();
                                                        },
                                                        fieldViewBuilder: (
                                                          context,
                                                          textEditingController,
                                                          focusNode,
                                                          onEditingComplete,
                                                        ) {
                                                          _model.textController2 =
                                                              textEditingController;
                                                          return TextFormField(
                                                            key: _model
                                                                .textFieldKey2,
                                                            controller:
                                                                textEditingController,
                                                            focusNode:
                                                                focusNode,
                                                            onEditingComplete:
                                                                onEditingComplete,
                                                            onFieldSubmitted:
                                                                (_) async {
                                                              logFirebaseEvent(
                                                                  'FILTERS_NEW_COPY_TextField_8jhhq09b_ON_T');
                                                              logFirebaseEvent(
                                                                  'TextField_update_app_state');
                                                              FFAppState()
                                                                  .update(() {
                                                                FFAppState()
                                                                    .addToSelectedCities(
                                                                        _model
                                                                            .textFieldSelectedOption2!);
                                                              });
                                                            },
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              hintText:
                                                                  'Search by CIty',
                                                              hintStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2,
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0xFFA0A0A0),
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0x00000000),
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5),
                                                              ),
                                                              errorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0x00000000),
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5),
                                                              ),
                                                              focusedErrorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0x00000000),
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5),
                                                              ),
                                                              contentPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16,
                                                                          0,
                                                                          0,
                                                                          0),
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1,
                                                            validator: _model
                                                                .textController2Validator
                                                                .asValidator(
                                                                    context),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1, 0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 10,
                                                                    0, 0),
                                                        child: Builder(
                                                          builder: (context) {
                                                            final city = functions
                                                                .removeDuplicates(widget
                                                                    .props!
                                                                    .where((e) => FFAppState()
                                                                        .selectedStates
                                                                        .contains(e
                                                                            .state))
                                                                    .toList()
                                                                    .map((e) =>
                                                                        e.city)
                                                                    .withoutNulls
                                                                    .toList())
                                                                .toList();
                                                            return Wrap(
                                                              spacing: 5,
                                                              runSpacing: 5,
                                                              alignment:
                                                                  WrapAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  WrapCrossAlignment
                                                                      .start,
                                                              direction: Axis
                                                                  .horizontal,
                                                              runAlignment:
                                                                  WrapAlignment
                                                                      .start,
                                                              verticalDirection:
                                                                  VerticalDirection
                                                                      .down,
                                                              clipBehavior:
                                                                  Clip.none,
                                                              children:
                                                                  List.generate(
                                                                      city.length,
                                                                      (cityIndex) {
                                                                final cityItem =
                                                                    city[
                                                                        cityIndex];
                                                                return InkWell(
                                                                  onTap:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'FILTERS_NEW_COPY_Container_5bw2kliz_ON_T');
                                                                    if (FFAppState()
                                                                        .selectedCities
                                                                        .contains(
                                                                            cityItem)) {
                                                                      logFirebaseEvent(
                                                                          'Container_update_app_state');
                                                                      FFAppState()
                                                                          .update(
                                                                              () {
                                                                        FFAppState()
                                                                            .removeFromSelectedCities(cityItem);
                                                                      });
                                                                    } else {
                                                                      logFirebaseEvent(
                                                                          'Container_update_app_state');
                                                                      FFAppState()
                                                                          .update(
                                                                              () {
                                                                        FFAppState()
                                                                            .addToSelectedCities(cityItem);
                                                                      });
                                                                    }
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    height: 30,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: valueOrDefault<
                                                                          Color>(
                                                                        FFAppState().selectedCities.contains(cityItem)
                                                                            ? Color(0xFF7AC5CD)
                                                                            : Color(0xFFF4F4F4),
                                                                        Color(
                                                                            0xFFF4F4F4),
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0xFFBCBCBC),
                                                                      ),
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10,
                                                                              5,
                                                                              10,
                                                                              5),
                                                                          child:
                                                                              Text(
                                                                            cityItem,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                  color: FFAppState().selectedCities.contains(cityItem) ? Colors.white : Color(0xFF091E25),
                                                                                  fontSize: 12,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                );
                                                              }),
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 10, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          InkWell(
                                                            onTap: () async {
                                                              logFirebaseEvent(
                                                                  'FILTERS_NEW_COPY_Text_7xbsqkoi_ON_TAP');
                                                              logFirebaseEvent(
                                                                  'Text_update_app_state');
                                                              FFAppState()
                                                                  .update(() {
                                                                FFAppState()
                                                                    .selectedCities = [];
                                                              });
                                                            },
                                                            child: Text(
                                                              'Clear Filter',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family,
                                                                    color: Color(
                                                                        0xFF8E8E8E),
                                                                    fontSize:
                                                                        14,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyText1Family),
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              theme: ExpandableThemeData(
                                                tapHeaderToExpand: true,
                                                tapBodyToExpand: false,
                                                tapBodyToCollapse: false,
                                                headerAlignment:
                                                    ExpandablePanelHeaderAlignment
                                                        .center,
                                                hasIcon: true,
                                                expandIcon: Icons.add_sharp,
                                                collapseIcon:
                                                    FontAwesomeIcons.minus,
                                                iconSize: 20,
                                                iconColor: Color(0xFF091E25),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15, 18, 15, 0),
                                child: Container(
                                  width: double.infinity,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFBCBCBC),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 5, 15, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          width: double.infinity,
                                          color: Colors.white,
                                          child: ExpandableNotifier(
                                            initialExpanded: false,
                                            child: ExpandablePanel(
                                              header: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Locality ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title1
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .title1Family,
                                                          color: Colors.black,
                                                          fontSize: 16,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .title1Family),
                                                        ),
                                                  ),
                                                  if (FFAppState()
                                                          .selectedLocs
                                                          .length !=
                                                      0)
                                                    Text(
                                                      '(${FFAppState().selectedLocs.length.toString()})',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                    ),
                                                ],
                                              ),
                                              collapsed: Container(
                                                height: 1,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              expanded: Container(
                                                decoration: BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 15, 0, 0),
                                                      child:
                                                          Autocomplete<String>(
                                                        initialValue:
                                                            TextEditingValue(),
                                                        optionsBuilder:
                                                            (textEditingValue) {
                                                          if (textEditingValue
                                                                  .text ==
                                                              '') {
                                                            return const Iterable<
                                                                String>.empty();
                                                          }
                                                          return functions
                                                              .removeDuplicates(filtersNewCopyPropertiesRecordList
                                                                  .where((e) => !FFAppState()
                                                                      .selectedCities
                                                                      .contains(e
                                                                          .city))
                                                                  .toList()
                                                                  .map((e) => e
                                                                      .location)
                                                                  .withoutNulls
                                                                  .toList())
                                                              .toList()
                                                              .where((option) {
                                                            final lowercaseOption =
                                                                option
                                                                    .toLowerCase();
                                                            return lowercaseOption
                                                                .contains(
                                                                    textEditingValue
                                                                        .text
                                                                        .toLowerCase());
                                                          });
                                                        },
                                                        optionsViewBuilder:
                                                            (context,
                                                                onSelected,
                                                                options) {
                                                          return AutocompleteOptionsList(
                                                            textFieldKey: _model
                                                                .textFieldKey3,
                                                            textController: _model
                                                                .textController3!,
                                                            options: options
                                                                .toList(),
                                                            onSelected:
                                                                onSelected,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1,
                                                            textHighlightStyle:
                                                                TextStyle(),
                                                            elevation: 4,
                                                            optionBackgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                            optionHighlightColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                            maxHeight: 200,
                                                          );
                                                        },
                                                        onSelected:
                                                            (String selection) {
                                                          setState(() => _model
                                                                  .textFieldSelectedOption3 =
                                                              selection);
                                                          FocusScope.of(context)
                                                              .unfocus();
                                                        },
                                                        fieldViewBuilder: (
                                                          context,
                                                          textEditingController,
                                                          focusNode,
                                                          onEditingComplete,
                                                        ) {
                                                          _model.textController3 =
                                                              textEditingController;
                                                          return TextFormField(
                                                            key: _model
                                                                .textFieldKey3,
                                                            controller:
                                                                textEditingController,
                                                            focusNode:
                                                                focusNode,
                                                            onEditingComplete:
                                                                onEditingComplete,
                                                            onFieldSubmitted:
                                                                (_) async {
                                                              logFirebaseEvent(
                                                                  'FILTERS_NEW_COPY_TextField_2ftxr2pq_ON_T');
                                                              logFirebaseEvent(
                                                                  'TextField_update_app_state');
                                                              FFAppState()
                                                                  .update(() {
                                                                FFAppState()
                                                                    .addToSelectedLocs(
                                                                        _model
                                                                            .textFieldSelectedOption3!);
                                                              });
                                                            },
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              hintText:
                                                                  'Search by Locality',
                                                              hintStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2,
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0xFFA0A0A0),
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0x00000000),
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5),
                                                              ),
                                                              errorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0x00000000),
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5),
                                                              ),
                                                              focusedErrorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0x00000000),
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5),
                                                              ),
                                                              contentPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16,
                                                                          0,
                                                                          0,
                                                                          0),
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1,
                                                            validator: _model
                                                                .textController3Validator
                                                                .asValidator(
                                                                    context),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1, 0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 10,
                                                                    0, 0),
                                                        child: Builder(
                                                          builder: (context) {
                                                            final loc = functions
                                                                .removeDuplicates(widget
                                                                    .props!
                                                                    .where((e) => FFAppState()
                                                                        .selectedCities
                                                                        .contains(e
                                                                            .city))
                                                                    .toList()
                                                                    .map((e) =>
                                                                        e.location)
                                                                    .withoutNulls
                                                                    .toList())
                                                                .toList();
                                                            return Wrap(
                                                              spacing: 5,
                                                              runSpacing: 5,
                                                              alignment:
                                                                  WrapAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  WrapCrossAlignment
                                                                      .start,
                                                              direction: Axis
                                                                  .horizontal,
                                                              runAlignment:
                                                                  WrapAlignment
                                                                      .start,
                                                              verticalDirection:
                                                                  VerticalDirection
                                                                      .down,
                                                              clipBehavior:
                                                                  Clip.none,
                                                              children:
                                                                  List.generate(
                                                                      loc.length,
                                                                      (locIndex) {
                                                                final locItem =
                                                                    loc[locIndex];
                                                                return InkWell(
                                                                  onTap:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'FILTERS_NEW_COPY_Container_gvp44r07_ON_T');
                                                                    if (FFAppState()
                                                                        .selectedLocs
                                                                        .contains(
                                                                            locItem)) {
                                                                      logFirebaseEvent(
                                                                          'Container_update_app_state');
                                                                      FFAppState()
                                                                          .update(
                                                                              () {
                                                                        FFAppState()
                                                                            .removeFromSelectedLocs(locItem);
                                                                      });
                                                                    } else {
                                                                      logFirebaseEvent(
                                                                          'Container_update_app_state');
                                                                      FFAppState()
                                                                          .update(
                                                                              () {
                                                                        FFAppState()
                                                                            .addToSelectedLocs(locItem);
                                                                      });
                                                                    }
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    height: 30,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: valueOrDefault<
                                                                          Color>(
                                                                        FFAppState().selectedLocs.contains(locItem)
                                                                            ? Color(0xFF7AC5CD)
                                                                            : Color(0xFFF4F4F4),
                                                                        Color(
                                                                            0xFFF4F4F4),
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0xFFBCBCBC),
                                                                      ),
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10,
                                                                              5,
                                                                              10,
                                                                              5),
                                                                          child:
                                                                              Text(
                                                                            locItem,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                  color: FFAppState().selectedLocs.contains(locItem) ? Colors.white : Color(0xFF091E25),
                                                                                  fontSize: 12,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                );
                                                              }),
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 10, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          InkWell(
                                                            onTap: () async {
                                                              logFirebaseEvent(
                                                                  'FILTERS_NEW_COPY_Text_jlbdkcp0_ON_TAP');
                                                              logFirebaseEvent(
                                                                  'Text_update_app_state');
                                                              FFAppState()
                                                                  .update(() {
                                                                FFAppState()
                                                                    .selectedLocs = [];
                                                              });
                                                            },
                                                            child: Text(
                                                              'Clear Filter',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family,
                                                                    color: Color(
                                                                        0xFF8E8E8E),
                                                                    fontSize:
                                                                        14,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyText1Family),
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              theme: ExpandableThemeData(
                                                tapHeaderToExpand: true,
                                                tapBodyToExpand: false,
                                                tapBodyToCollapse: false,
                                                headerAlignment:
                                                    ExpandablePanelHeaderAlignment
                                                        .center,
                                                hasIcon: true,
                                                expandIcon: Icons.add_sharp,
                                                collapseIcon:
                                                    FontAwesomeIcons.minus,
                                                iconSize: 20,
                                                iconColor: Color(0xFF091E25),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15, 18, 15, 0),
                                child: Container(
                                  width: double.infinity,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFBCBCBC),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15, 18, 15, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SelectionArea(
                                        child: Text(
                                      'Budget',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1Family,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1Family),
                                          ),
                                    )),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 10, 0, 0),
                                      child: Container(
                                        width: double.infinity,
                                        height: 80,
                                        child:
                                            custom_widgets.TwowaySilderFilter(
                                          width: double.infinity,
                                          height: 80,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15, 18, 15, 0),
                                child: Container(
                                  width: double.infinity,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFBCBCBC),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 5, 15, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          width: double.infinity,
                                          color: Colors.white,
                                          child: ExpandableNotifier(
                                            initialExpanded: false,
                                            child: ExpandablePanel(
                                              header: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Property Type ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title1
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .title1Family,
                                                          color: Colors.black,
                                                          fontSize: 16,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .title1Family),
                                                        ),
                                                  ),
                                                  if (FFAppState()
                                                          .selectedTypes
                                                          .length !=
                                                      0)
                                                    Text(
                                                      '(${FFAppState().selectedTypes.length.toString()})',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                    ),
                                                ],
                                              ),
                                              collapsed: Container(
                                                height: 1,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              expanded: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 15, 0, 0),
                                                    child: Autocomplete<String>(
                                                      initialValue:
                                                          TextEditingValue(),
                                                      optionsBuilder:
                                                          (textEditingValue) {
                                                        if (textEditingValue
                                                                .text ==
                                                            '') {
                                                          return const Iterable<
                                                              String>.empty();
                                                        }
                                                        return FFAppState()
                                                            .propertyTypes
                                                            .toList()
                                                            .where((option) {
                                                          final lowercaseOption =
                                                              option
                                                                  .toLowerCase();
                                                          return lowercaseOption
                                                              .contains(
                                                                  textEditingValue
                                                                      .text
                                                                      .toLowerCase());
                                                        });
                                                      },
                                                      optionsViewBuilder:
                                                          (context, onSelected,
                                                              options) {
                                                        return AutocompleteOptionsList(
                                                          textFieldKey: _model
                                                              .textFieldKey4,
                                                          textController: _model
                                                              .textController4!,
                                                          options:
                                                              options.toList(),
                                                          onSelected:
                                                              onSelected,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyText1,
                                                          textHighlightStyle:
                                                              TextStyle(),
                                                          elevation: 4,
                                                          optionBackgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryBackground,
                                                          optionHighlightColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondaryBackground,
                                                          maxHeight: 200,
                                                        );
                                                      },
                                                      onSelected:
                                                          (String selection) {
                                                        setState(() => _model
                                                                .textFieldSelectedOption4 =
                                                            selection);
                                                        FocusScope.of(context)
                                                            .unfocus();
                                                      },
                                                      fieldViewBuilder: (
                                                        context,
                                                        textEditingController,
                                                        focusNode,
                                                        onEditingComplete,
                                                      ) {
                                                        _model.textController4 =
                                                            textEditingController;
                                                        return TextFormField(
                                                          key: _model
                                                              .textFieldKey4,
                                                          controller:
                                                              textEditingController,
                                                          focusNode: focusNode,
                                                          onEditingComplete:
                                                              onEditingComplete,
                                                          onFieldSubmitted:
                                                              (_) async {
                                                            logFirebaseEvent(
                                                                'FILTERS_NEW_COPY_TextField_4bradste_ON_T');
                                                            logFirebaseEvent(
                                                                'TextField_update_app_state');
                                                            FFAppState()
                                                                .update(() {
                                                              FFAppState()
                                                                  .addToSelectedTypes(
                                                                      _model
                                                                          .textFieldSelectedOption4!);
                                                            });
                                                          },
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            hintText:
                                                                'Search by Type',
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText2,
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0xFFA0A0A0),
                                                                width: 1,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                            errorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                            focusedErrorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                            contentPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16,
                                                                        0,
                                                                        0,
                                                                        0),
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1,
                                                          validator: _model
                                                              .textController4Validator
                                                              .asValidator(
                                                                  context),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1, 0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 10, 0, 0),
                                                      child: Builder(
                                                        builder: (context) {
                                                          final type =
                                                              FFAppState()
                                                                  .propertyTypes
                                                                  .toList();
                                                          return Wrap(
                                                            spacing: 5,
                                                            runSpacing: 5,
                                                            alignment:
                                                                WrapAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                WrapCrossAlignment
                                                                    .start,
                                                            direction:
                                                                Axis.horizontal,
                                                            runAlignment:
                                                                WrapAlignment
                                                                    .start,
                                                            verticalDirection:
                                                                VerticalDirection
                                                                    .down,
                                                            clipBehavior:
                                                                Clip.none,
                                                            children:
                                                                List.generate(
                                                                    type.length,
                                                                    (typeIndex) {
                                                              final typeItem =
                                                                  type[
                                                                      typeIndex];
                                                              return InkWell(
                                                                onTap:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'FILTERS_NEW_COPY_Container_7ez1vbrr_ON_T');
                                                                  if (FFAppState()
                                                                      .selectedTypes
                                                                      .contains(
                                                                          typeItem)) {
                                                                    logFirebaseEvent(
                                                                        'Container_update_app_state');
                                                                    FFAppState()
                                                                        .update(
                                                                            () {
                                                                      FFAppState()
                                                                          .removeFromSelectedTypes(
                                                                              typeItem);
                                                                    });
                                                                  } else {
                                                                    logFirebaseEvent(
                                                                        'Container_update_app_state');
                                                                    FFAppState()
                                                                        .update(
                                                                            () {
                                                                      FFAppState()
                                                                          .addToSelectedTypes(
                                                                              typeItem);
                                                                    });
                                                                  }
                                                                },
                                                                child:
                                                                    Container(
                                                                  height: 30,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: valueOrDefault<
                                                                        Color>(
                                                                      FFAppState()
                                                                              .selectedTypes
                                                                              .contains(
                                                                                  typeItem)
                                                                          ? Color(
                                                                              0xFF7AC5CD)
                                                                          : Color(
                                                                              0xFFF4F4F4),
                                                                      Color(
                                                                          0xFFF4F4F4),
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(5),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color(
                                                                          0xFFBCBCBC),
                                                                    ),
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            10,
                                                                            5,
                                                                            10,
                                                                            5),
                                                                        child:
                                                                            Text(
                                                                          typeItem,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                color: FFAppState().selectedTypes.contains(typeItem) ? Colors.white : Color(0xFF091E25),
                                                                                fontSize: 12,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              );
                                                            }),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 10, 0, 0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        InkWell(
                                                          onTap: () async {
                                                            logFirebaseEvent(
                                                                'FILTERS_NEW_COPY_Text_wji9pz7p_ON_TAP');
                                                            logFirebaseEvent(
                                                                'Text_update_app_state');
                                                            FFAppState()
                                                                .update(() {
                                                              FFAppState()
                                                                  .selectedTypes = [];
                                                            });
                                                          },
                                                          child: Text(
                                                            'Clear Filter',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family,
                                                                  color: Color(
                                                                      0xFF8E8E8E),
                                                                  fontSize: 14,
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
                                                  ),
                                                ],
                                              ),
                                              theme: ExpandableThemeData(
                                                tapHeaderToExpand: true,
                                                tapBodyToExpand: false,
                                                tapBodyToCollapse: false,
                                                headerAlignment:
                                                    ExpandablePanelHeaderAlignment
                                                        .center,
                                                hasIcon: true,
                                                expandIcon: Icons.add_sharp,
                                                collapseIcon:
                                                    FontAwesomeIcons.minus,
                                                iconSize: 20,
                                                iconColor: Color(0xFF091E25),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15, 18, 15, 0),
                                child: Container(
                                  width: double.infinity,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFBCBCBC),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 5, 15, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          width: double.infinity,
                                          color: Colors.white,
                                          child: ExpandableNotifier(
                                            initialExpanded: false,
                                            child: ExpandablePanel(
                                              header: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Bank/Instituition ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title1
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .title1Family,
                                                          color: Colors.black,
                                                          fontSize: 16,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .title1Family),
                                                        ),
                                                  ),
                                                  if (FFAppState()
                                                          .selectedBanks
                                                          .length !=
                                                      0)
                                                    Text(
                                                      '(${FFAppState().selectedBanks.length.toString()})',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                    ),
                                                ],
                                              ),
                                              collapsed: Container(
                                                height: 1,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              expanded: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 15, 0, 0),
                                                    child: Autocomplete<String>(
                                                      initialValue:
                                                          TextEditingValue(),
                                                      optionsBuilder:
                                                          (textEditingValue) {
                                                        if (textEditingValue
                                                                .text ==
                                                            '') {
                                                          return const Iterable<
                                                              String>.empty();
                                                        }
                                                        return functions
                                                            .removeDuplicates(
                                                                filtersNewCopyPropertiesRecordList
                                                                    .map((e) =>
                                                                        e.institutionName)
                                                                    .withoutNulls
                                                                    .toList())
                                                            .toList()
                                                            .where((option) {
                                                          final lowercaseOption =
                                                              option
                                                                  .toLowerCase();
                                                          return lowercaseOption
                                                              .contains(
                                                                  textEditingValue
                                                                      .text
                                                                      .toLowerCase());
                                                        });
                                                      },
                                                      optionsViewBuilder:
                                                          (context, onSelected,
                                                              options) {
                                                        return AutocompleteOptionsList(
                                                          textFieldKey: _model
                                                              .textFieldKey5,
                                                          textController: _model
                                                              .textController5!,
                                                          options:
                                                              options.toList(),
                                                          onSelected:
                                                              onSelected,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyText1,
                                                          textHighlightStyle:
                                                              TextStyle(),
                                                          elevation: 4,
                                                          optionBackgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryBackground,
                                                          optionHighlightColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondaryBackground,
                                                          maxHeight: 200,
                                                        );
                                                      },
                                                      onSelected:
                                                          (String selection) {
                                                        setState(() => _model
                                                                .textFieldSelectedOption5 =
                                                            selection);
                                                        FocusScope.of(context)
                                                            .unfocus();
                                                      },
                                                      fieldViewBuilder: (
                                                        context,
                                                        textEditingController,
                                                        focusNode,
                                                        onEditingComplete,
                                                      ) {
                                                        _model.textController5 =
                                                            textEditingController;
                                                        return TextFormField(
                                                          key: _model
                                                              .textFieldKey5,
                                                          controller:
                                                              textEditingController,
                                                          focusNode: focusNode,
                                                          onEditingComplete:
                                                              onEditingComplete,
                                                          onFieldSubmitted:
                                                              (_) async {
                                                            logFirebaseEvent(
                                                                'FILTERS_NEW_COPY_TextField_bfooxwe3_ON_T');
                                                            logFirebaseEvent(
                                                                'TextField_update_app_state');
                                                            FFAppState()
                                                                .update(() {
                                                              FFAppState()
                                                                  .addToSelectedBanks(
                                                                      _model
                                                                          .textFieldSelectedOption5!);
                                                            });
                                                          },
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            hintText:
                                                                'Search by Banks',
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText2,
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0xFFA0A0A0),
                                                                width: 1,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                            errorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                            focusedErrorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                            contentPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16,
                                                                        0,
                                                                        0,
                                                                        0),
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1,
                                                          validator: _model
                                                              .textController5Validator
                                                              .asValidator(
                                                                  context),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1, 0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 10, 0, 0),
                                                      child: Builder(
                                                        builder: (context) {
                                                          final banks = functions
                                                              .removeDuplicates(
                                                                  filtersNewCopyPropertiesRecordList
                                                                      .map((e) =>
                                                                          e.institutionName)
                                                                      .withoutNulls
                                                                      .toList())
                                                              .toList();
                                                          return Wrap(
                                                            spacing: 5,
                                                            runSpacing: 5,
                                                            alignment:
                                                                WrapAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                WrapCrossAlignment
                                                                    .start,
                                                            direction:
                                                                Axis.horizontal,
                                                            runAlignment:
                                                                WrapAlignment
                                                                    .start,
                                                            verticalDirection:
                                                                VerticalDirection
                                                                    .down,
                                                            clipBehavior:
                                                                Clip.none,
                                                            children:
                                                                List.generate(
                                                                    banks
                                                                        .length,
                                                                    (banksIndex) {
                                                              final banksItem =
                                                                  banks[
                                                                      banksIndex];
                                                              return InkWell(
                                                                onTap:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'FILTERS_NEW_COPY_Container_99qqwd98_ON_T');
                                                                  if (FFAppState()
                                                                      .selectedBanks
                                                                      .contains(
                                                                          banksItem)) {
                                                                    logFirebaseEvent(
                                                                        'Container_update_app_state');
                                                                    FFAppState()
                                                                        .update(
                                                                            () {
                                                                      FFAppState()
                                                                          .removeFromSelectedBanks(
                                                                              banksItem);
                                                                    });
                                                                  } else {
                                                                    logFirebaseEvent(
                                                                        'Container_update_app_state');
                                                                    FFAppState()
                                                                        .update(
                                                                            () {
                                                                      FFAppState()
                                                                          .addToSelectedBanks(
                                                                              banksItem);
                                                                    });
                                                                  }
                                                                },
                                                                child:
                                                                    Container(
                                                                  height: 30,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: valueOrDefault<
                                                                        Color>(
                                                                      FFAppState()
                                                                              .selectedBanks
                                                                              .contains(
                                                                                  banksItem)
                                                                          ? Color(
                                                                              0xFF7AC5CD)
                                                                          : Color(
                                                                              0xFFF4F4F4),
                                                                      Color(
                                                                          0xFFF4F4F4),
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(5),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color(
                                                                          0xFFBCBCBC),
                                                                    ),
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            10,
                                                                            5,
                                                                            10,
                                                                            5),
                                                                        child:
                                                                            Text(
                                                                          banksItem,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                color: FFAppState().selectedBanks.contains(banksItem) ? Colors.white : Color(0xFF091E25),
                                                                                fontSize: 12,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              );
                                                            }),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 10, 0, 0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        InkWell(
                                                          onTap: () async {
                                                            logFirebaseEvent(
                                                                'FILTERS_NEW_COPY_Text_jw1fns3h_ON_TAP');
                                                            logFirebaseEvent(
                                                                'Text_update_app_state');
                                                            FFAppState()
                                                                .update(() {
                                                              FFAppState()
                                                                  .selectedBanks = [];
                                                            });
                                                          },
                                                          child: Text(
                                                            'Clear Filter',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family,
                                                                  color: Color(
                                                                      0xFF8E8E8E),
                                                                  fontSize: 14,
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
                                                  ),
                                                ],
                                              ),
                                              theme: ExpandableThemeData(
                                                tapHeaderToExpand: true,
                                                tapBodyToExpand: false,
                                                tapBodyToCollapse: false,
                                                headerAlignment:
                                                    ExpandablePanelHeaderAlignment
                                                        .center,
                                                hasIcon: true,
                                                expandIcon: Icons.add_sharp,
                                                collapseIcon:
                                                    FontAwesomeIcons.minus,
                                                iconSize: 20,
                                                iconColor: Color(0xFF091E25),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15, 18, 15, 0),
                                child: Container(
                                  width: double.infinity,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFBCBCBC),
                                  ),
                                ),
                              ),
                              Theme(
                                data: ThemeData(
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                                child: CheckboxListTile(
                                  value: _model.checkboxListTileValue ??=
                                      FFAppState().selectedprivateTreaty,
                                  onChanged: (newValue) async {
                                    setState(() => _model
                                        .checkboxListTileValue = newValue!);
                                  },
                                  title: Text(
                                    'Private Treaty',
                                    style: FlutterFlowTheme.of(context)
                                        .title3
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .title3Family,
                                          fontWeight: FontWeight.bold,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .title3Family),
                                        ),
                                  ),
                                  activeColor:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  checkColor: Colors.white,
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  color: Color(0x1A091E25),
                                  offset: Offset(0, -1),
                                )
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15, 10, 15, 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'FILTERS_NEW_COPY_SHOW_PROPERTIES_BTN_ON_');
                                        logFirebaseEvent(
                                            'Button_update_app_state');
                                        FFAppState().update(() {
                                          FFAppState().filterCity = FFAppState()
                                              .selectedCities
                                              .toList();
                                          FFAppState().filterType = FFAppState()
                                              .selectedTypes
                                              .toList();
                                          FFAppState().filterArea = FFAppState()
                                              .selectedLocs
                                              .toList();
                                          FFAppState().filterState =
                                              FFAppState()
                                                  .selectedStates
                                                  .toList();
                                          FFAppState().filterBanks =
                                              FFAppState()
                                                  .selectedBanks
                                                  .toList();
                                          FFAppState().filterMaxBudget =
                                              FFAppState().selectedmaxBudget;
                                          FFAppState().filterMinBudget =
                                              FFAppState().selectedminBudget;
                                          FFAppState().filterPrivateTreaty =
                                              _model.checkboxListTileValue!;
                                          FFAppState().filtersApplied = true;
                                          FFAppState().clearfilter = false;
                                        });
                                        logFirebaseEvent(
                                            'Button_update_app_state');
                                        FFAppState().update(() {
                                          FFAppState().filterAppDateStart =
                                              _model.datePicked1 != null
                                                  ? _model.datePicked1
                                                  : FFAppState()
                                                      .selectedAppDateStart;
                                          FFAppState().filterAppDateEnd =
                                              _model.datePicked2 != null
                                                  ? _model.datePicked2
                                                  : getCurrentTimestamp;
                                          FFAppState().filterAucDateStart =
                                              _model.datePicked3 != null
                                                  ? _model.datePicked3
                                                  : getCurrentTimestamp;
                                          FFAppState().filterAucDateEnd =
                                              _model.datePicked4 != null
                                                  ? _model.datePicked4
                                                  : getCurrentTimestamp;
                                        });
                                        if (widget.fromSearch!) {
                                          logFirebaseEvent(
                                              'Button_navigate_to');

                                          context.pushNamed(
                                            'PLP_NewSearch',
                                            queryParams: {
                                              'searchkeyword': serializeParam(
                                                widget.searchkeyword,
                                                ParamType.String,
                                              ),
                                              'carousels': serializeParam(
                                                false,
                                                ParamType.bool,
                                              ),
                                              'trending': serializeParam(
                                                widget.trending,
                                                ParamType.bool,
                                              ),
                                            }.withoutNulls,
                                          );

                                          logFirebaseEvent(
                                              'Button_update_app_state');
                                          FFAppState().update(() {
                                            FFAppState().filtersApplied = false;
                                            FFAppState().filterAppliedSearch =
                                                true;
                                            FFAppState()
                                                .filterAppliedCarousels = false;
                                            FFAppState().filterAppliedEOI =
                                                false;
                                            FFAppState().filterAppliedFav =
                                                false;
                                            FFAppState().filterAppliedSimilar =
                                                false;
                                          });
                                        }
                                        if (widget.carousels!) {
                                          logFirebaseEvent(
                                              'Button_navigate_to');

                                          context.pushNamed(
                                            'PLP_Carousels',
                                            queryParams: {
                                              'trending': serializeParam(
                                                widget.trending,
                                                ParamType.bool,
                                              ),
                                              'title': serializeParam(
                                                widget.carouselsTitle,
                                                ParamType.String,
                                              ),
                                            }.withoutNulls,
                                          );

                                          logFirebaseEvent(
                                              'Button_update_app_state');
                                          FFAppState().update(() {
                                            FFAppState().filtersApplied = false;
                                            FFAppState().filterAppliedSearch =
                                                false;
                                            FFAppState()
                                                .filterAppliedCarousels = true;
                                            FFAppState().filterAppliedEOI =
                                                false;
                                            FFAppState().filterAppliedFav =
                                                false;
                                            FFAppState().filterAppliedSimilar =
                                                false;
                                          });
                                        }
                                        if (widget.main!) {
                                          logFirebaseEvent(
                                              'Button_navigate_to');

                                          context.pushNamed(
                                            'PLP_New',
                                            queryParams: {
                                              'carousels': serializeParam(
                                                false,
                                                ParamType.bool,
                                              ),
                                              'trending': serializeParam(
                                                widget.trending,
                                                ParamType.bool,
                                              ),
                                              'pageNum': serializeParam(
                                                0,
                                                ParamType.int,
                                              ),
                                              'title': serializeParam(
                                                '',
                                                ParamType.String,
                                              ),
                                            }.withoutNulls,
                                          );

                                          logFirebaseEvent(
                                              'Button_update_app_state');
                                          FFAppState().update(() {
                                            FFAppState().filtersApplied = true;
                                            FFAppState().filterAppliedSearch =
                                                false;
                                            FFAppState()
                                                .filterAppliedCarousels = false;
                                            FFAppState().filterAppliedEOI =
                                                false;
                                            FFAppState().filterAppliedFav =
                                                false;
                                            FFAppState().filterAppliedSimilar =
                                                false;
                                          });
                                        }
                                        if (widget.fav!) {
                                          logFirebaseEvent(
                                              'Button_navigate_to');

                                          context.pushNamed(
                                            'PLP_Fav',
                                            queryParams: {
                                              'carousels': serializeParam(
                                                false,
                                                ParamType.bool,
                                              ),
                                              'trending': serializeParam(
                                                widget.trending,
                                                ParamType.bool,
                                              ),
                                              'pageNum': serializeParam(
                                                0,
                                                ParamType.int,
                                              ),
                                              'title': serializeParam(
                                                '',
                                                ParamType.String,
                                              ),
                                            }.withoutNulls,
                                          );

                                          logFirebaseEvent(
                                              'Button_update_app_state');
                                          FFAppState().update(() {
                                            FFAppState().filtersApplied = false;
                                            FFAppState().filterAppliedSearch =
                                                false;
                                            FFAppState()
                                                .filterAppliedCarousels = false;
                                            FFAppState().filterAppliedEOI =
                                                false;
                                            FFAppState().filterAppliedFav =
                                                true;
                                            FFAppState().filterAppliedSimilar =
                                                false;
                                          });
                                        }
                                        if (widget.eoi!) {
                                          logFirebaseEvent(
                                              'Button_navigate_to');

                                          context.pushNamed(
                                            'PLPExpressinterest',
                                            queryParams: {
                                              'carousels': serializeParam(
                                                false,
                                                ParamType.bool,
                                              ),
                                              'trending': serializeParam(
                                                widget.trending,
                                                ParamType.bool,
                                              ),
                                              'pageNum': serializeParam(
                                                0,
                                                ParamType.int,
                                              ),
                                              'title': serializeParam(
                                                '',
                                                ParamType.String,
                                              ),
                                            }.withoutNulls,
                                          );

                                          logFirebaseEvent(
                                              'Button_update_app_state');
                                          FFAppState().update(() {
                                            FFAppState().filtersApplied = false;
                                            FFAppState().filterAppliedSearch =
                                                false;
                                            FFAppState()
                                                .filterAppliedCarousels = false;
                                            FFAppState().filterAppliedEOI =
                                                true;
                                            FFAppState().filterAppliedFav =
                                                false;
                                            FFAppState().filterAppliedSimilar =
                                                false;
                                          });
                                        }
                                        if (widget.similar!) {
                                          logFirebaseEvent(
                                              'Button_navigate_to');

                                          context.pushNamed(
                                            'PLP_Similar',
                                            queryParams: {
                                              'carousels': serializeParam(
                                                false,
                                                ParamType.bool,
                                              ),
                                              'trending': serializeParam(
                                                widget.trending,
                                                ParamType.bool,
                                              ),
                                              'pageNum': serializeParam(
                                                0,
                                                ParamType.int,
                                              ),
                                              'title': serializeParam(
                                                '',
                                                ParamType.String,
                                              ),
                                              'city': serializeParam(
                                                widget.similarCity,
                                                ParamType.String,
                                              ),
                                              'propType': serializeParam(
                                                widget.similarType,
                                                ParamType.String,
                                              ),
                                            }.withoutNulls,
                                          );

                                          logFirebaseEvent(
                                              'Button_update_app_state');
                                          FFAppState().update(() {
                                            FFAppState().filtersApplied = false;
                                            FFAppState().filterAppliedSearch =
                                                false;
                                            FFAppState()
                                                .filterAppliedCarousels = false;
                                            FFAppState().filterAppliedEOI =
                                                false;
                                            FFAppState().filterAppliedFav =
                                                false;
                                            FFAppState().filterAppliedSimilar =
                                                true;
                                          });
                                        }
                                      },
                                      text: 'Show Properties',
                                      options: FFButtonOptions(
                                        width: 130,
                                        height: 40,
                                        color: Color(0xFF00BBBB),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle2Family,
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .subtitle2Family),
                                            ),
                                        borderSide: BorderSide(
                                          color: Color(0xFF00BBBB),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
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
              ),
            ));
      },
    );
  }
}
