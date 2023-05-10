import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  int? mainTemperature;

  int? minTemperature;

  int? maxTemperature;

  int? humidity;

  int? wind;

  String? city;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Get weather by name)] action in HomePage widget.
  ApiCallResponse? apiResulty2n;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (Get weather by name)] action in TextField widget.
  ApiCallResponse? apiResultuof;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textController?.dispose();
  }

  /// Additional helper methods are added here.

}
