import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'icon_hecta_model.dart';
export 'icon_hecta_model.dart';

class IconHectaWidget extends StatefulWidget {
  const IconHectaWidget({Key? key}) : super(key: key);

  @override
  _IconHectaWidgetState createState() => _IconHectaWidgetState();
}

class _IconHectaWidgetState extends State<IconHectaWidget> {
  late IconHectaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IconHectaModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
      child: Icon(
        Icons.settings_outlined,
        color: Colors.black,
        size: 24,
      ),
    );
  }
}
