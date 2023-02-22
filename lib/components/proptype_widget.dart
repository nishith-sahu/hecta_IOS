import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'proptype_model.dart';
export 'proptype_model.dart';

class ProptypeWidget extends StatefulWidget {
  const ProptypeWidget({Key? key}) : super(key: key);

  @override
  _ProptypeWidgetState createState() => _ProptypeWidgetState();
}

class _ProptypeWidgetState extends State<ProptypeWidget> {
  late ProptypeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProptypeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Property Type',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyText1Family,
                        fontWeight: FontWeight.bold,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyText1Family),
                      ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Theme(
                data: ThemeData(
                  unselectedWidgetColor:
                      FlutterFlowTheme.of(context).primaryText,
                ),
                child: CheckboxListTile(
                  value: _model.checkboxListTileValue1 ??= false,
                  onChanged: (newValue) async {
                    setState(() => _model.checkboxListTileValue1 = newValue!);
                  },
                  title: Text(
                    'Agricultural Land',
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: FlutterFlowTheme.of(context).title3Family,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).title3Family),
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).primaryBackground,
                  activeColor: FlutterFlowTheme.of(context).primaryColor,
                  checkColor: FlutterFlowTheme.of(context).primaryBackground,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              ),
              Theme(
                data: ThemeData(
                  unselectedWidgetColor:
                      FlutterFlowTheme.of(context).primaryText,
                ),
                child: CheckboxListTile(
                  value: _model.checkboxListTileValue2 ??= false,
                  onChanged: (newValue) async {
                    setState(() => _model.checkboxListTileValue2 = newValue!);
                  },
                  title: Text(
                    'Commercial Property',
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: FlutterFlowTheme.of(context).title3Family,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).title3Family),
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).primaryBackground,
                  activeColor: FlutterFlowTheme.of(context).primaryColor,
                  checkColor: FlutterFlowTheme.of(context).primaryBackground,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              ),
              Theme(
                data: ThemeData(
                  unselectedWidgetColor:
                      FlutterFlowTheme.of(context).primaryText,
                ),
                child: CheckboxListTile(
                  value: _model.checkboxListTileValue3 ??= false,
                  onChanged: (newValue) async {
                    setState(() => _model.checkboxListTileValue3 = newValue!);
                  },
                  title: Text(
                    'Commercial Space',
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: FlutterFlowTheme.of(context).title3Family,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).title3Family),
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).primaryBackground,
                  activeColor: FlutterFlowTheme.of(context).primaryColor,
                  checkColor: FlutterFlowTheme.of(context).primaryBackground,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              ),
              Theme(
                data: ThemeData(
                  unselectedWidgetColor:
                      FlutterFlowTheme.of(context).primaryText,
                ),
                child: CheckboxListTile(
                  value: _model.checkboxListTileValue4 ??= false,
                  onChanged: (newValue) async {
                    setState(() => _model.checkboxListTileValue4 = newValue!);
                  },
                  title: Text(
                    'Independent House',
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: FlutterFlowTheme.of(context).title3Family,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).title3Family),
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).primaryBackground,
                  activeColor: FlutterFlowTheme.of(context).primaryColor,
                  checkColor: FlutterFlowTheme.of(context).primaryBackground,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              ),
              Theme(
                data: ThemeData(
                  unselectedWidgetColor:
                      FlutterFlowTheme.of(context).primaryText,
                ),
                child: CheckboxListTile(
                  value: _model.checkboxListTileValue5 ??= false,
                  onChanged: (newValue) async {
                    setState(() => _model.checkboxListTileValue5 = newValue!);
                  },
                  title: Text(
                    'Industrial Land',
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: FlutterFlowTheme.of(context).title3Family,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).title3Family),
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).primaryBackground,
                  activeColor: FlutterFlowTheme.of(context).primaryColor,
                  checkColor: FlutterFlowTheme.of(context).primaryBackground,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              ),
              Theme(
                data: ThemeData(
                  unselectedWidgetColor:
                      FlutterFlowTheme.of(context).primaryText,
                ),
                child: CheckboxListTile(
                  value: _model.checkboxListTileValue6 ??= false,
                  onChanged: (newValue) async {
                    setState(() => _model.checkboxListTileValue6 = newValue!);
                  },
                  title: Text(
                    'Agricultural Land',
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: FlutterFlowTheme.of(context).title3Family,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).title3Family),
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).primaryBackground,
                  activeColor: FlutterFlowTheme.of(context).primaryColor,
                  checkColor: FlutterFlowTheme.of(context).primaryBackground,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              ),
              Theme(
                data: ThemeData(
                  unselectedWidgetColor:
                      FlutterFlowTheme.of(context).primaryText,
                ),
                child: CheckboxListTile(
                  value: _model.checkboxListTileValue7 ??= false,
                  onChanged: (newValue) async {
                    setState(() => _model.checkboxListTileValue7 = newValue!);
                  },
                  title: Text(
                    'Land & Building',
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: FlutterFlowTheme.of(context).title3Family,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).title3Family),
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).primaryBackground,
                  activeColor: FlutterFlowTheme.of(context).primaryColor,
                  checkColor: FlutterFlowTheme.of(context).primaryBackground,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              ),
              Theme(
                data: ThemeData(
                  unselectedWidgetColor:
                      FlutterFlowTheme.of(context).primaryText,
                ),
                child: CheckboxListTile(
                  value: _model.checkboxListTileValue8 ??= false,
                  onChanged: (newValue) async {
                    setState(() => _model.checkboxListTileValue8 = newValue!);
                  },
                  title: Text(
                    'Office',
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: FlutterFlowTheme.of(context).title3Family,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).title3Family),
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).primaryBackground,
                  activeColor: FlutterFlowTheme.of(context).primaryColor,
                  checkColor: FlutterFlowTheme.of(context).primaryBackground,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              ),
              Theme(
                data: ThemeData(
                  unselectedWidgetColor:
                      FlutterFlowTheme.of(context).primaryText,
                ),
                child: CheckboxListTile(
                  value: _model.checkboxListTileValue9 ??= false,
                  onChanged: (newValue) async {
                    setState(() => _model.checkboxListTileValue9 = newValue!);
                  },
                  title: Text(
                    'Residential Land',
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: FlutterFlowTheme.of(context).title3Family,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).title3Family),
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).primaryBackground,
                  activeColor: FlutterFlowTheme.of(context).primaryColor,
                  checkColor: FlutterFlowTheme.of(context).primaryBackground,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              ),
              Theme(
                data: ThemeData(
                  unselectedWidgetColor:
                      FlutterFlowTheme.of(context).primaryText,
                ),
                child: CheckboxListTile(
                  value: _model.checkboxListTileValue10 ??= false,
                  onChanged: (newValue) async {
                    setState(() => _model.checkboxListTileValue10 = newValue!);
                  },
                  title: Text(
                    'Residential Plot',
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: FlutterFlowTheme.of(context).title3Family,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).title3Family),
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).primaryBackground,
                  activeColor: FlutterFlowTheme.of(context).primaryColor,
                  checkColor: FlutterFlowTheme.of(context).primaryBackground,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              ),
              Theme(
                data: ThemeData(
                  unselectedWidgetColor:
                      FlutterFlowTheme.of(context).primaryText,
                ),
                child: CheckboxListTile(
                  value: _model.checkboxListTileValue11 ??= false,
                  onChanged: (newValue) async {
                    setState(() => _model.checkboxListTileValue11 = newValue!);
                  },
                  title: Text(
                    'Shop',
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: FlutterFlowTheme.of(context).title3Family,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).title3Family),
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).primaryBackground,
                  activeColor: FlutterFlowTheme.of(context).primaryColor,
                  checkColor: FlutterFlowTheme.of(context).primaryBackground,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: '',
                    icon: FaIcon(
                      FontAwesomeIcons.arrowLeft,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 20,
                    ),
                    options: FFButtonOptions(
                      width: 50,
                      height: 50,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      textStyle: FlutterFlowTheme.of(context)
                          .subtitle2
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).subtitle2Family,
                            color: Colors.white,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).subtitle2Family),
                          ),
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryText,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Show Properties',
                  options: FFButtonOptions(
                    width: 314,
                    height: 50,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).subtitle2Family,
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).subtitle2Family),
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
