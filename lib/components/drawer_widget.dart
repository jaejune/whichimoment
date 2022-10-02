import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 11, 0, 0),
          child: InkWell(
            onTap: () async {
              context.pushNamed('Student_page');
            },
            child: Text(
              '대학생 상담사',
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Poppins',
                    fontSize: 22,
                  ),
            ),
          ),
        ),
        Divider(
          indent: 22,
          endIndent: 22,
          color: FlutterFlowTheme.of(context).primaryText,
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 11, 0, 0),
          child: InkWell(
            onTap: () async {
              context.pushNamed('pro_page');
            },
            child: Text(
              '전문 상담사',
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Poppins',
                    fontSize: 22,
                  ),
            ),
          ),
        ),
        Divider(
          indent: 22,
          endIndent: 22,
          color: FlutterFlowTheme.of(context).primaryText,
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 11, 0, 0),
          child: InkWell(
            onTap: () async {
              context.pushNamed('Community');
            },
            child: Text(
              '커뮤니티',
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Poppins',
                    fontSize: 22,
                  ),
            ),
          ),
        ),
        Divider(
          indent: 22,
          endIndent: 22,
          color: FlutterFlowTheme.of(context).primaryText,
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 11, 0, 0),
          child: InkWell(
            onTap: () async {
              context.pushNamed('Contents');
            },
            child: Text(
              '컨텐츠',
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Poppins',
                    fontSize: 22,
                  ),
            ),
          ),
        ),
        Divider(
          indent: 22,
          endIndent: 22,
          color: FlutterFlowTheme.of(context).primaryText,
        ),
        Container(
          width: double.infinity,
          color: Color(0x00000000),
          child: ExpandableNotifier(
            initialExpanded: false,
            child: ExpandablePanel(
              header: Text(
                '회사 소개',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).title1.override(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      fontSize: 22,
                    ),
              ),
              collapsed: Container(
                width: MediaQuery.of(context).size.width,
                height: 0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                  child: Text(
                    '',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Color(0x8A000000),
                        ),
                  ),
                ),
              ),
              expanded: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
                      onTap: () async {
                        context.pushNamed('Company1');
                      },
                      child: Text(
                        '오시는 길',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0x8A000000),
                              fontSize: 16,
                            ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        context.pushNamed('Company3');
                      },
                      child: Text(
                        '비전',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                            ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        context.pushNamed('Company2');
                      },
                      child: Text(
                        '협력기관',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                            ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        context.pushNamed('Company4_Notice');
                      },
                      child: Text(
                        '소식',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              theme: ExpandableThemeData(
                tapHeaderToExpand: true,
                tapBodyToExpand: false,
                tapBodyToCollapse: false,
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                hasIcon: true,
              ),
            ),
          ),
        ),
        Divider(
          indent: 22,
          endIndent: 22,
          color: FlutterFlowTheme.of(context).primaryText,
        ),
        InkWell(
          onTap: () async {
            context.pushNamed('ManagerPage_Home');
          },
          child: Text(
            '관리자페이지',
            style: FlutterFlowTheme.of(context).bodyText1,
          ),
        ),
      ],
    );
  }
}
