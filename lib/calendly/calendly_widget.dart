import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'calendly_model.dart';
export 'calendly_model.dart';

class CalendlyWidget extends StatefulWidget {
  const CalendlyWidget({
    Key? key,
    this.url,
  }) : super(key: key);

  final String? url;

  @override
  _CalendlyWidgetState createState() => _CalendlyWidgetState();
}

class _CalendlyWidgetState extends State<CalendlyWidget> {
  late CalendlyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalendlyModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'calendly'});
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
        title: 'calendly',
        color: FlutterFlowTheme.of(context).primaryColor,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FlutterFlowWebView(
                    url: 'https://calendly.com/hectap/30min',
                    bypass: false,
                    height: MediaQuery.of(context).size.height * 1,
                    verticalScroll: true,
                    horizontalScroll: true,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
