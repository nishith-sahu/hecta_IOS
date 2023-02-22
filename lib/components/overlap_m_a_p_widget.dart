import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'overlap_m_a_p_model.dart';
export 'overlap_m_a_p_model.dart';

class OverlapMAPWidget extends StatefulWidget {
  const OverlapMAPWidget({Key? key}) : super(key: key);

  @override
  _OverlapMAPWidgetState createState() => _OverlapMAPWidgetState();
}

class _OverlapMAPWidgetState extends State<OverlapMAPWidget> {
  late OverlapMAPModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OverlapMAPModel());

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

    return Container();
  }
}
