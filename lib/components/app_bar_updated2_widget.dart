import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'app_bar_updated2_model.dart';
export 'app_bar_updated2_model.dart';

class AppBarUpdated2Widget extends StatefulWidget {
  const AppBarUpdated2Widget({Key? key}) : super(key: key);

  @override
  _AppBarUpdated2WidgetState createState() => _AppBarUpdated2WidgetState();
}

class _AppBarUpdated2WidgetState extends State<AppBarUpdated2Widget> {
  late AppBarUpdated2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppBarUpdated2Model());

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

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
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
            padding: EdgeInsetsDirectional.fromSTEB(15, 10, 0, 15),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              InkWell(
                                onTap: () async {
                                  logFirebaseEvent(
                                      'APP_BAR_UPDATED2_Icon_tvqr64wu_ON_TAP');
                                  logFirebaseEvent('Icon_navigate_back');
                                  context.pop();
                                },
                                child: Icon(
                                  Icons.arrow_back_sharp,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 24,
                                ),
                              ),
                              Container(
                                width: 75,
                                height: 20,
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 0, 0, 0),
                                  child: SvgPicture.asset(
                                    'assets/images/Logo.svg',
                                    width: double.infinity,
                                    height: double.infinity,
                                    fit: BoxFit.contain,
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
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                                child: InkWell(
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'APP_BAR_UPDATED2_Icon_7jlxd2bv_ON_TAP');
                                    logFirebaseEvent('Icon_navigate_to');

                                    context.pushNamed('Search_ScreenNew');
                                  },
                                  child: Icon(
                                    Icons.search_sharp,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
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
                                        'APP_BAR_UPDATED2_Icon_9zmcs5u2_ON_TAP');
                                    logFirebaseEvent('Icon_navigate_to');

                                    context.pushNamed('social');
                                  },
                                  child: Icon(
                                    Icons.alternate_email_sharp,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
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
                                              'APP_BAR_UPDATED2_Icon_3uzhs75y_ON_TAP');
                                          if (functions.mapLength(
                                                  containerUserRecord!.cart!
                                                      .toList()) !=
                                              0) {
                                            logFirebaseEvent(
                                                'Icon_navigate_to');

                                            context
                                                .pushNamed('cart_Screen1_new');
                                          } else {
                                            logFirebaseEvent(
                                                'Icon_navigate_to');

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
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                                child: InkWell(
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'APP_BAR_UPDATED2_Icon_t7miau01_ON_TAP');
                                    logFirebaseEvent('Icon_navigate_to');

                                    context.pushNamed('Notifications_page');
                                  },
                                  child: Icon(
                                    Icons.notifications_sharp,
                                    color: FlutterFlowTheme.of(context)
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
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(34, 0, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
