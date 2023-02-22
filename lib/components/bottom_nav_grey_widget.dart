import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bottom_nav_grey_model.dart';
export 'bottom_nav_grey_model.dart';

class BottomNavGreyWidget extends StatefulWidget {
  const BottomNavGreyWidget({Key? key}) : super(key: key);

  @override
  _BottomNavGreyWidgetState createState() => _BottomNavGreyWidgetState();
}

class _BottomNavGreyWidgetState extends State<BottomNavGreyWidget> {
  late BottomNavGreyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomNavGreyModel());

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

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 3,
            color: Color(0x25091E25),
            offset: Offset(0, -1),
          )
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.25,
            height: 64,
            decoration: BoxDecoration(),
            child: InkWell(
              onTap: () async {
                logFirebaseEvent('BOTTOM_NAV_GREY_Column_e003whsn_ON_TAP');
                logFirebaseEvent('Column_navigate_to');

                context.pushNamed('Home_Screen');
              },
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home_sharp,
                    color: Color(0xFFBCBCBC),
                    size: 24,
                  ),
                  Text(
                    'Home',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyText1Family,
                          color: Color(0xFFBCBCBC),
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyText1Family),
                        ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.25,
            height: 64,
            decoration: BoxDecoration(),
            child: InkWell(
              onTap: () async {
                logFirebaseEvent('BOTTOM_NAV_GREY_Column_8j18oqub_ON_TAP');
                logFirebaseEvent('Column_navigate_to');

                context.pushNamed(
                  'PLP_New',
                  queryParams: {
                    'pageNum': serializeParam(
                      1,
                      ParamType.int,
                    ),
                    'carousels': serializeParam(
                      false,
                      ParamType.bool,
                    ),
                    'title': serializeParam(
                      '',
                      ParamType.String,
                    ),
                    'trending': serializeParam(
                      false,
                      ParamType.bool,
                    ),
                  }.withoutNulls,
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home_work_sharp,
                    color: Color(0xFFBCBCBC),
                    size: 24,
                  ),
                  Text(
                    'Properties',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyText1Family,
                          color: Color(0xFFBCBCBC),
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyText1Family),
                        ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.25,
            height: 64,
            decoration: BoxDecoration(),
            child: InkWell(
              onTap: () async {
                logFirebaseEvent('BOTTOM_NAV_GREY_Column_02bo5tla_ON_TAP');
                logFirebaseEvent('Column_navigate_to');

                context.pushNamed(
                  'PLP_Fav',
                  queryParams: {
                    'pageNum': serializeParam(
                      0,
                      ParamType.int,
                    ),
                    'carousels': serializeParam(
                      false,
                      ParamType.bool,
                    ),
                    'title': serializeParam(
                      '',
                      ParamType.String,
                    ),
                    'trending': serializeParam(
                      false,
                      ParamType.bool,
                    ),
                  }.withoutNulls,
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.favorite_sharp,
                    color: Color(0xFFBCBCBC),
                    size: 24,
                  ),
                  Text(
                    'Favourites',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyText1Family,
                          color: Color(0xFFBCBCBC),
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyText1Family),
                        ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.25,
            height: 64,
            decoration: BoxDecoration(),
            child: InkWell(
              onTap: () async {
                logFirebaseEvent('BOTTOM_NAV_GREY_Column_6lv9xedy_ON_TAP');
                logFirebaseEvent('Column_navigate_to');

                context.pushNamed(
                  'Requirements_New',
                  queryParams: {
                    'fromSearch': serializeParam(
                      false,
                      ParamType.bool,
                    ),
                  }.withoutNulls,
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FFIcons.kfinal1,
                    color: Color(0xFFBCBCBC),
                    size: 24,
                  ),
                  Text(
                    'Requirements',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyText1Family,
                          color: Color(0xFFBCBCBC),
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyText1Family),
                        ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
