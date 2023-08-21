import '/examples/filosofos_description/filosofos_description_widget.dart';
import '/examples/filosofos_header/filosofos_header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'filosofos_profile_model.dart';
export 'filosofos_profile_model.dart';

class FilosofosProfileWidget extends StatefulWidget {
  const FilosofosProfileWidget({Key? key}) : super(key: key);

  @override
  _FilosofosProfileWidgetState createState() => _FilosofosProfileWidgetState();
}

class _FilosofosProfileWidgetState extends State<FilosofosProfileWidget> {
  late FilosofosProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilosofosProfileModel());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          title: Text(
            'Page Title',
            style: FlutterFlowTheme.of(context).headlineMedium,
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.filosofosHeaderModel,
                updateCallback: () => setState(() {}),
                child: FilosofosHeaderWidget(),
              ),
              wrapWithModel(
                model: _model.filosofosDescriptionModel,
                updateCallback: () => setState(() {}),
                child: FilosofosDescriptionWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
