import '/drawer/drawer/drawer_widget.dart';
import '/drawer/menu_button/menu_button_widget.dart';
import '/filosofos/filosofos_list_component/filosofos_list_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FilosofosListModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for MenuButton component.
  late MenuButtonModel menuButtonModel;
  // Model for FilosofosListComponent component.
  late FilosofosListComponentModel filosofosListComponentModel;
  // Model for Drawer component.
  late DrawerModel drawerModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuButtonModel = createModel(context, () => MenuButtonModel());
    filosofosListComponentModel =
        createModel(context, () => FilosofosListComponentModel());
    drawerModel = createModel(context, () => DrawerModel());
  }

  void dispose() {
    unfocusNode.dispose();
    menuButtonModel.dispose();
    filosofosListComponentModel.dispose();
    drawerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
