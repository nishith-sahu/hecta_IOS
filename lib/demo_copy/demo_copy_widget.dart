import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'demo_copy_model.dart';
export 'demo_copy_model.dart';

class DemoCopyWidget extends StatefulWidget {
  const DemoCopyWidget({Key? key}) : super(key: key);

  @override
  _DemoCopyWidgetState createState() => _DemoCopyWidgetState();
}

class _DemoCopyWidgetState extends State<DemoCopyWidget> {
  late DemoCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DemoCopyModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'demoCopy'});
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
        List<PropertiesRecord> demoCopyPropertiesRecordList = snapshot.data!;
        return Title(
            title: 'demoCopy',
            color: FlutterFlowTheme.of(context).primaryColor,
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              body: SafeArea(
                child: GestureDetector(
                  onTap: () =>
                      FocusScope.of(context).requestFocus(_unfocusNode),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'FilterCity',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        Builder(
                          builder: (context) {
                            final city = FFAppState().filterCity.toList();
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(city.length, (cityIndex) {
                                final cityItem = city[cityIndex];
                                return Text(
                                  cityItem,
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                );
                              }),
                            );
                          },
                        ),
                        Text(
                          'ARea',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        Builder(
                          builder: (context) {
                            final area = FFAppState().filterArea.toList();
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(area.length, (areaIndex) {
                                final areaItem = area[areaIndex];
                                return Text(
                                  areaItem,
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                );
                              }),
                            );
                          },
                        ),
                        Text(
                          'banks',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        Builder(
                          builder: (context) {
                            final uid = FFAppState().filterBanks.toList();
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(uid.length, (uidIndex) {
                                final uidItem = uid[uidIndex];
                                return Text(
                                  uidItem,
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                );
                              }),
                            );
                          },
                        ),
                        Text(
                          'State',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        Builder(
                          builder: (context) {
                            final state = FFAppState().filterState.toList();
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children:
                                  List.generate(state.length, (stateIndex) {
                                final stateItem = state[stateIndex];
                                return Text(
                                  stateItem,
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                );
                              }),
                            );
                          },
                        ),
                        Text(
                          'type',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        Builder(
                          builder: (context) {
                            final type = FFAppState().filterType.toList();
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(type.length, (typeIndex) {
                                final typeItem = type[typeIndex];
                                return Text(
                                  typeItem,
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                );
                              }),
                            );
                          },
                        ),
                        Text(
                          FFAppState().filterPrivateTreaty ? 'True' : 'False',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ));
      },
    );
  }
}
