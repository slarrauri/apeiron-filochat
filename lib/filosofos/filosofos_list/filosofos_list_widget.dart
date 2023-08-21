import '/drawer/drawer/drawer_widget.dart';
import '/drawer/menu_button/menu_button_widget.dart';
import '/filosofos/filosofos_list_component/filosofos_list_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'filosofos_list_model.dart';
export 'filosofos_list_model.dart';

class FilosofosListWidget extends StatefulWidget {
  const FilosofosListWidget({Key? key}) : super(key: key);

  @override
  _FilosofosListWidgetState createState() => _FilosofosListWidgetState();
}

class _FilosofosListWidgetState extends State<FilosofosListWidget> {
  late FilosofosListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilosofosListModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF1F4F8),
        drawer: Container(
          width: MediaQuery.sizeOf(context).width * 0.75,
          child: Drawer(
            elevation: 16.0,
            child: wrapWithModel(
              model: _model.drawerModel,
              updateCallback: () => setState(() {}),
              child: DrawerWidget(),
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color(0xFFF1F4F8),
          automaticallyImplyLeading: false,
          leading: wrapWithModel(
            model: _model.menuButtonModel,
            updateCallback: () => setState(() {}),
            child: MenuButtonWidget(),
          ),
          title: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Filosofos',
                style: FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFF14181B),
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ],
          ),
          actions: [],
          centerTitle: true,
          elevation: 3.0,
        ),
        body: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: 420.0,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: wrapWithModel(
                    model: _model.filosofosListComponentModel,
                    updateCallback: () => setState(() {}),
                    child: FilosofosListComponentWidget(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
