import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pref_onboarding_copy_model.dart';
export 'pref_onboarding_copy_model.dart';

class PrefOnboardingCopyWidget extends StatefulWidget {
  const PrefOnboardingCopyWidget({
    Key? key,
    this.fromSearch,
  }) : super(key: key);

  final bool? fromSearch;

  @override
  _PrefOnboardingCopyWidgetState createState() =>
      _PrefOnboardingCopyWidgetState();
}

class _PrefOnboardingCopyWidgetState extends State<PrefOnboardingCopyWidget> {
  late PrefOnboardingCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrefOnboardingCopyModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'pref_onboardingCopy'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('PREF_ONBOARDING_COPY_pref_onboardingCopy');
      if (widget.fromSearch!) {
        logFirebaseEvent('pref_onboardingCopy_wait__delay');
        await Future.delayed(const Duration(milliseconds: 100));
        if (functions.contains(FFAppState().citiesPref.toList(), 'Delhi')) {
          logFirebaseEvent('pref_onboardingCopy_update_app_state');
          FFAppState().update(() {
            FFAppState().delhi = false;
          });
        } else {
          logFirebaseEvent('pref_onboardingCopy_update_app_state');
          FFAppState().update(() {
            FFAppState().delhi = true;
          });
        }

        if (functions.contains(
            FFAppState().citiesPref.toList(), 'Gurgaon, Haryana')) {
          logFirebaseEvent('pref_onboardingCopy_update_app_state');
          FFAppState().update(() {
            FFAppState().gurgaon = false;
          });
        } else {
          logFirebaseEvent('pref_onboardingCopy_update_app_state');
          FFAppState().update(() {
            FFAppState().gurgaon = true;
          });
        }

        if (functions.contains(
            FFAppState().citiesPref.toList(), 'Noida, Uttar Pradesh')) {
          logFirebaseEvent('pref_onboardingCopy_update_app_state');
          FFAppState().update(() {
            FFAppState().noida = false;
          });
        } else {
          logFirebaseEvent('pref_onboardingCopy_update_app_state');
          FFAppState().update(() {
            FFAppState().noida = true;
          });
        }

        if (functions.contains(
            FFAppState().citiesPref.toList(), 'Mumbai, Maharashtra')) {
          logFirebaseEvent('pref_onboardingCopy_update_app_state');
          FFAppState().update(() {
            FFAppState().mumbai = false;
          });
        } else {
          logFirebaseEvent('pref_onboardingCopy_update_app_state');
          FFAppState().update(() {
            FFAppState().mumbai = true;
          });
        }

        if (functions.contains(
            FFAppState().citiesPref.toList(), 'Pune, Maharashtra')) {
          logFirebaseEvent('pref_onboardingCopy_update_app_state');
          FFAppState().update(() {
            FFAppState().pune = false;
          });
        } else {
          logFirebaseEvent('pref_onboardingCopy_update_app_state');
          FFAppState().update(() {
            FFAppState().pune = true;
          });
        }

        if (functions.contains(
            FFAppState().citiesPref.toList(), 'Bangalore, Karnataka')) {
          logFirebaseEvent('pref_onboardingCopy_update_app_state');
          FFAppState().update(() {
            FFAppState().bangalore = false;
          });
        } else {
          logFirebaseEvent('pref_onboardingCopy_update_app_state');
          FFAppState().update(() {
            FFAppState().bangalore = true;
          });
        }

        if (functions.contains(
            FFAppState().citiesPref.toList(), 'Chennai, Tamil Nadu')) {
          logFirebaseEvent('pref_onboardingCopy_update_app_state');
          FFAppState().update(() {
            FFAppState().chennai = false;
          });
        } else {
          logFirebaseEvent('pref_onboardingCopy_update_app_state');
          FFAppState().update(() {
            FFAppState().chennai = true;
          });
        }

        if (functions.contains(
            FFAppState().citiesPref.toList(), 'Hyderabad, Telangana')) {
          logFirebaseEvent('pref_onboardingCopy_update_app_state');
          FFAppState().update(() {
            FFAppState().hyderabad = false;
          });
        } else {
          logFirebaseEvent('pref_onboardingCopy_update_app_state');
          FFAppState().update(() {
            FFAppState().hyderabad = true;
          });
        }

        if (functions.contains(
            FFAppState().citiesPref.toList(), 'Surat, Gujarat')) {
          logFirebaseEvent('pref_onboardingCopy_update_app_state');
          FFAppState().update(() {
            FFAppState().surat = false;
          });
        } else {
          logFirebaseEvent('pref_onboardingCopy_update_app_state');
          FFAppState().update(() {
            FFAppState().surat = true;
          });
        }
      } else {
        logFirebaseEvent('pref_onboardingCopy_update_app_state');
        FFAppState().update(() {
          FFAppState().citiesPref = FFAppState().emptyList.toList();
          FFAppState().citiesPrefPerm = FFAppState().emptyList.toList();
        });
        logFirebaseEvent('pref_onboardingCopy_update_app_state');
        FFAppState().update(() {
          FFAppState().reqCity = FFAppState().emptyList.toList();
          FFAppState().reqArea = FFAppState().emptyList.toList();
        });
        logFirebaseEvent('pref_onboardingCopy_update_app_state');
        FFAppState().update(() {
          FFAppState().reqState = FFAppState().emptyList.toList();
          FFAppState().reqType = FFAppState().emptyList.toList();
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
        List<PrefrencesRecord> prefOnboardingCopyPrefrencesRecordList =
            snapshot.data!;
        final prefOnboardingCopyPrefrencesRecord =
            prefOnboardingCopyPrefrencesRecordList.isNotEmpty
                ? prefOnboardingCopyPrefrencesRecordList.first
                : null;
        return Title(
            title: 'pref_onboardingCopy',
            color: FlutterFlowTheme.of(context).primaryColor,
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            ));
      },
    );
  }
}
