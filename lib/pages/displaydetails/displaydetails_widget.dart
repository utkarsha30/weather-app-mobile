import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'displaydetails_model.dart';
export 'displaydetails_model.dart';

class DisplaydetailsWidget extends StatefulWidget {
  const DisplaydetailsWidget({Key? key}) : super(key: key);

  @override
  _DisplaydetailsWidgetState createState() => _DisplaydetailsWidgetState();
}

class _DisplaydetailsWidgetState extends State<DisplaydetailsWidget> {
  late DisplaydetailsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DisplaydetailsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
