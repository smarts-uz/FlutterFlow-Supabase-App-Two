import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'badge_page_model.dart';
export 'badge_page_model.dart';

class BadgePageWidget extends StatefulWidget {
  const BadgePageWidget({Key? key}) : super(key: key);

  @override
  _BadgePageWidgetState createState() => _BadgePageWidgetState();
}

class _BadgePageWidgetState extends State<BadgePageWidget> {
  late BadgePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BadgePageModel());
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
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                FFLocalizations.of(context).getText(
                  '4an3t1zt' /* Badge */,
                ),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                child: badges.Badge(
                  badgeContent: Text(
                    FFLocalizations.of(context).getText(
                      'yvxirs4j' /* 8 */,
                    ),
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                        ),
                  ),
                  showBadge: true,
                  shape: badges.BadgeShape.circle,
                  badgeColor: Color(0xFFFEC92D),
                  elevation: 6.0,
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                  position: badges.BadgePosition.topEnd(),
                  animationType: badges.BadgeAnimationType.scale,
                  toAnimate: true,
                  child: Icon(
                    Icons.notifications,
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    size: 24.0,
                  ),
                ),
              ),
            ],
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [],
          ),
        ),
      ),
    );
  }
}
