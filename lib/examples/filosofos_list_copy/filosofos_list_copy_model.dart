import '/filosofos/filosofos_list_component/filosofos_list_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FilosofosListCopyModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for FilosofosListComponent component.
  late FilosofosListComponentModel filosofosListComponentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    filosofosListComponentModel =
        createModel(context, () => FilosofosListComponentModel());
  }

  void dispose() {
    unfocusNode.dispose();
    filosofosListComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
