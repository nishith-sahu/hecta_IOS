import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'app_bar_updated_model.dart';
export 'app_bar_updated_model.dart';

class AppBarUpdatedWidget extends StatefulWidget {
  const AppBarUpdatedWidget({Key? key}) : super(key: key);

  @override
  _AppBarUpdatedWidgetState createState() => _AppBarUpdatedWidgetState();
}

class _AppBarUpdatedWidgetState extends State<AppBarUpdatedWidget> {
  late AppBarUpdatedModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppBarUpdatedModel());

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
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Color(0xFFA0A0A0),
            offset: Offset(0, 1),
            spreadRadius: 0,
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () async {
                    logFirebaseEvent('APP_BAR_UPDATED_Stack_ccx6y6je_ON_TAP');
                    logFirebaseEvent('Stack_navigate_to');

                    context.pushNamed('Menubar');
                  },
                  child: Stack(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          color: Color(0xFF00BBBB),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AuthUserStreamWidget(
                              builder: (context) => Text(
                                functions.getProfileInititals(
                                    currentUserEmail, currentUserDisplayName),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyText1Family,
                                      color: Colors.white,
                                      fontSize: 12,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1Family),
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 15, 0, 0),
                        child: Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            color: Color(0xFFF4F4F4),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(
                            Icons.menu_sharp,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            size: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 75,
                          height: 20,
                          decoration: BoxDecoration(),
                          child: SvgPicture.asset(
                            'assets/images/Logo.svg',
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                              child: InkWell(
                                onTap: () async {
                                  logFirebaseEvent(
                                      'APP_BAR_UPDATED_Icon_bz7uc1yy_ON_TAP');
                                  logFirebaseEvent('Icon_navigate_to');

                                  context.pushNamed('Search_ScreenNew');
                                },
                                child: Icon(
                                  Icons.search_sharp,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 24,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                              child: InkWell(
                                onTap: () async {
                                  logFirebaseEvent(
                                      'APP_BAR_UPDATED_Icon_d1kbu0z6_ON_TAP');
                                  logFirebaseEvent('Icon_navigate_to');

                                  context.pushNamed('social');
                                },
                                child: Icon(
                                  Icons.alternate_email_sharp,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24,
                                ),
                              ),
                            ),
                            StreamBuilder<List<UserRecord>>(
                              stream: queryUserRecord(
                                queryBuilder: (userRecord) => userRecord
                                    .where('uid', isEqualTo: currentUserUid),
                                singleRecord: true,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 5,
                                      height: 5,
                                      child: CircularProgressIndicator(
                                        color: Colors.white,
                                      ),
                                    ),
                                  );
                                }
                                List<UserRecord> containerUserRecordList =
                                    snapshot.data!;
                                final containerUserRecord =
                                    containerUserRecordList.isNotEmpty
                                        ? containerUserRecordList.first
                                        : null;
                                return Container(
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 15, 0),
                                    child: InkWell(
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'APP_BAR_UPDATED_Icon_3dt51rjv_ON_TAP');
                                        if (functions.mapLength(
                                                containerUserRecord!.cart!
                                                    .toList()) !=
                                            0) {
                                          logFirebaseEvent('Icon_navigate_to');

                                          context.pushNamed('cart_Screen1_new');
                                        } else {
                                          logFirebaseEvent('Icon_navigate_to');

                                          context
                                              .pushNamed('cart_screen_empty');
                                        }
                                      },
                                      child: Icon(
                                        Icons.shopping_cart_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 24,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                            InkWell(
                              onTap: () async {
                                logFirebaseEvent(
                                    'APP_BAR_UPDATED_Icon_vtwj78py_ON_TAP');
                                logFirebaseEvent('Icon_navigate_to');

                                context.pushNamed('Notifications_page');
                              },
                              child: Icon(
                                Icons.notifications_sharp,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24,
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
                  padding: EdgeInsetsDirectional.fromSTEB(39, 0, 0, 0),
                  child: Text(
                    'Bank se... Hecta pe!',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyText1Family,
                          color: Color(0xFFBCBCBC),
                          fontSize: 12,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyText1Family),
                        ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
