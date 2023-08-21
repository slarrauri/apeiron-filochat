import '/examples/filosofos_description/filosofos_description_widget.dart';
import '/examples/filosofos_header/filosofos_header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FilosofosProfileModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for FilosofosHeader component.
  late FilosofosHeaderModel filosofosHeaderModel;
  // Model for FilosofosDescription component.
  late FilosofosDescriptionModel filosofosDescriptionModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    filosofosHeaderModel = createModel(context, () => FilosofosHeaderModel());
    filosofosDescriptionModel =
        createModel(context, () => FilosofosDescriptionModel());
  }

  void dispose() {
    unfocusNode.dispose();
    filosofosHeaderModel.dispose();
    filosofosDescriptionModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
