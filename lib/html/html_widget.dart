import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'html_model.dart';
export 'html_model.dart';

class HtmlWidget extends StatefulWidget {
  const HtmlWidget({Key? key}) : super(key: key);

  @override
  _HtmlWidgetState createState() => _HtmlWidgetState();
}

class _HtmlWidgetState extends State<HtmlWidget> {
  late HtmlModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HtmlModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'html'});
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
        title: 'html',
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
                  Html(
                    data:
                        '<ul> <li>Kings Park Omega-1 Greater Noida presents an exclusive opportunity to own a stunni<span class=\"\">ng home that offers all kinds of amenities and facilities.</span></li> <li><span class=\"\">This includes a swimming pool, conference room, and easy access to restaurant.</span></li> <li><span class=\"\">It also has a squash court, an exclusive offering only for Today Kings Park residents.</span></li> </ul>',
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
