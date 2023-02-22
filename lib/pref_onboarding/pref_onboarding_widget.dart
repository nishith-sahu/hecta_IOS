import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pref_onboarding_model.dart';
export 'pref_onboarding_model.dart';

class PrefOnboardingWidget extends StatefulWidget {
  const PrefOnboardingWidget({
    Key? key,
    this.fromSearch,
  }) : super(key: key);

  final bool? fromSearch;

  @override
  _PrefOnboardingWidgetState createState() => _PrefOnboardingWidgetState();
}

class _PrefOnboardingWidgetState extends State<PrefOnboardingWidget> {
  late PrefOnboardingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrefOnboardingModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'pref_onboarding'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('PREF_ONBOARDING_pref_onboarding_ON_LOAD');
      if (widget.fromSearch!) {
        logFirebaseEvent('pref_onboarding_wait__delay');
        await Future.delayed(const Duration(milliseconds: 100));
      } else {
        logFirebaseEvent('pref_onboarding_update_app_state');
        FFAppState().update(() {
          FFAppState().citiesPref = FFAppState().citiesPrefPerm.toList();
        });
        if (functions.contains(
            FFAppState().reqType.toList(), 'Commercial Property')) {
          logFirebaseEvent('pref_onboarding_update_app_state');
          FFAppState().update(() {
            FFAppState().cp = true;
          });
        } else {
          logFirebaseEvent('pref_onboarding_update_app_state');
          FFAppState().update(() {
            FFAppState().cp = false;
          });
        }

        if (functions.contains(
            FFAppState().reqType.toList(), 'Commercial Space')) {
          logFirebaseEvent('pref_onboarding_update_app_state');
          FFAppState().update(() {
            FFAppState().cs = true;
          });
        } else {
          logFirebaseEvent('pref_onboarding_update_app_state');
          FFAppState().update(() {
            FFAppState().cs = false;
          });
        }

        if (functions.contains(
            FFAppState().reqType.toList(), 'Independent House')) {
          logFirebaseEvent('pref_onboarding_update_app_state');
          FFAppState().update(() {
            FFAppState().ih = true;
          });
        } else {
          logFirebaseEvent('pref_onboarding_update_app_state');
          FFAppState().update(() {
            FFAppState().ih = false;
          });
        }

        if (functions.contains(
            FFAppState().reqType.toList(), 'Agricultural Land')) {
          logFirebaseEvent('pref_onboarding_update_app_state');
          FFAppState().update(() {
            FFAppState().al = true;
          });
        } else {
          logFirebaseEvent('pref_onboarding_update_app_state');
          FFAppState().update(() {
            FFAppState().al = false;
          });
        }

        if (functions.contains(
            FFAppState().reqType.toList(), 'Land & Building')) {
          logFirebaseEvent('pref_onboarding_update_app_state');
          FFAppState().update(() {
            FFAppState().lnb = true;
          });
        } else {
          logFirebaseEvent('pref_onboarding_update_app_state');
          FFAppState().update(() {
            FFAppState().lnb = false;
          });
        }

        if (functions.contains(FFAppState().reqType.toList(), 'Office')) {
          logFirebaseEvent('pref_onboarding_update_app_state');
          FFAppState().update(() {
            FFAppState().off = true;
          });
        } else {
          logFirebaseEvent('pref_onboarding_update_app_state');
          FFAppState().update(() {
            FFAppState().off = false;
          });
        }

        if (functions.contains(
            FFAppState().reqType.toList(), 'Residential Land')) {
          logFirebaseEvent('pref_onboarding_update_app_state');
          FFAppState().update(() {
            FFAppState().rl = true;
          });
        } else {
          logFirebaseEvent('pref_onboarding_update_app_state');
          FFAppState().update(() {
            FFAppState().rl = false;
          });
        }

        if (functions.contains(
            FFAppState().reqType.toList(), 'Residential Plot')) {
          logFirebaseEvent('pref_onboarding_update_app_state');
          FFAppState().update(() {
            FFAppState().rp = true;
          });
        } else {
          logFirebaseEvent('pref_onboarding_update_app_state');
          FFAppState().update(() {
            FFAppState().rp = false;
          });
        }

        if (functions.contains(
            FFAppState().reqType.toList(), 'Residential Flat')) {
          logFirebaseEvent('pref_onboarding_update_app_state');
          FFAppState().update(() {
            FFAppState().rf = true;
          });
        } else {
          logFirebaseEvent('pref_onboarding_update_app_state');
          FFAppState().update(() {
            FFAppState().rf = false;
          });
        }

        if (functions.contains(
            FFAppState().reqType.toList(), 'Industrial Land')) {
          logFirebaseEvent('pref_onboarding_update_app_state');
          FFAppState().update(() {
            FFAppState().il = true;
          });
        } else {
          logFirebaseEvent('pref_onboarding_update_app_state');
          FFAppState().update(() {
            FFAppState().il = false;
          });
        }

        if (functions.contains(
            FFAppState().reqType.toList(), 'Industrial Plot')) {
          logFirebaseEvent('pref_onboarding_update_app_state');
          FFAppState().update(() {
            FFAppState().ip = true;
          });
        } else {
          logFirebaseEvent('pref_onboarding_update_app_state');
          FFAppState().update(() {
            FFAppState().ip = false;
          });
        }

        if (functions.contains(FFAppState().reqType.toList(), 'Shop')) {
          logFirebaseEvent('pref_onboarding_update_app_state');
          FFAppState().update(() {
            FFAppState().sh = true;
          });
        } else {
          logFirebaseEvent('pref_onboarding_update_app_state');
          FFAppState().update(() {
            FFAppState().sh = false;
          });
        }
      }

      if (functions.contains(FFAppState().citiesPref.toList(), 'Delhi')) {
        logFirebaseEvent('pref_onboarding_update_app_state');
        FFAppState().update(() {
          FFAppState().delhi = false;
        });
      } else {
        logFirebaseEvent('pref_onboarding_update_app_state');
        FFAppState().update(() {
          FFAppState().delhi = true;
        });
      }

      if (functions.contains(
          FFAppState().citiesPref.toList(), 'Gurgaon, Haryana')) {
        logFirebaseEvent('pref_onboarding_update_app_state');
        FFAppState().update(() {
          FFAppState().gurgaon = false;
        });
      } else {
        logFirebaseEvent('pref_onboarding_update_app_state');
        FFAppState().update(() {
          FFAppState().gurgaon = true;
        });
      }

      if (functions.contains(
          FFAppState().citiesPref.toList(), 'Noida, Uttar Pradesh')) {
        logFirebaseEvent('pref_onboarding_update_app_state');
        FFAppState().update(() {
          FFAppState().noida = false;
        });
      } else {
        logFirebaseEvent('pref_onboarding_update_app_state');
        FFAppState().update(() {
          FFAppState().noida = true;
        });
      }

      if (functions.contains(
          FFAppState().citiesPref.toList(), 'Mumbai, Maharashtra')) {
        logFirebaseEvent('pref_onboarding_update_app_state');
        FFAppState().update(() {
          FFAppState().mumbai = false;
        });
      } else {
        logFirebaseEvent('pref_onboarding_update_app_state');
        FFAppState().update(() {
          FFAppState().mumbai = true;
        });
      }

      if (functions.contains(
          FFAppState().citiesPref.toList(), 'Pune, Maharashtra')) {
        logFirebaseEvent('pref_onboarding_update_app_state');
        FFAppState().update(() {
          FFAppState().pune = false;
        });
      } else {
        logFirebaseEvent('pref_onboarding_update_app_state');
        FFAppState().update(() {
          FFAppState().pune = true;
        });
      }

      if (functions.contains(
          FFAppState().citiesPref.toList(), 'Bangalore, Karnataka')) {
        logFirebaseEvent('pref_onboarding_update_app_state');
        FFAppState().update(() {
          FFAppState().bangalore = false;
        });
      } else {
        logFirebaseEvent('pref_onboarding_update_app_state');
        FFAppState().update(() {
          FFAppState().bangalore = true;
        });
      }

      if (functions.contains(
          FFAppState().citiesPref.toList(), 'Chennai, Tamil Nadu')) {
        logFirebaseEvent('pref_onboarding_update_app_state');
        FFAppState().update(() {
          FFAppState().chennai = false;
        });
      } else {
        logFirebaseEvent('pref_onboarding_update_app_state');
        FFAppState().update(() {
          FFAppState().chennai = true;
        });
      }

      if (functions.contains(
          FFAppState().citiesPref.toList(), 'Hyderabad, Telangana')) {
        logFirebaseEvent('pref_onboarding_update_app_state');
        FFAppState().update(() {
          FFAppState().hyderabad = false;
        });
      } else {
        logFirebaseEvent('pref_onboarding_update_app_state');
        FFAppState().update(() {
          FFAppState().hyderabad = true;
        });
      }

      if (functions.contains(
          FFAppState().citiesPref.toList(), 'Surat, Gujarat')) {
        logFirebaseEvent('pref_onboarding_update_app_state');
        FFAppState().update(() {
          FFAppState().surat = false;
        });
      } else {
        logFirebaseEvent('pref_onboarding_update_app_state');
        FFAppState().update(() {
          FFAppState().surat = true;
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
        List<PrefrencesRecord> prefOnboardingPrefrencesRecordList =
            snapshot.data!;
        final prefOnboardingPrefrencesRecord =
            prefOnboardingPrefrencesRecordList.isNotEmpty
                ? prefOnboardingPrefrencesRecordList.first
                : null;
        return Title(
            title: 'pref_onboarding',
            color: FlutterFlowTheme.of(context).primaryColor,
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            ));
      },
    );
  }
}
