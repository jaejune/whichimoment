import '../backend/backend.dart';
import '../components/footer_widget.dart';
import '../components/menu_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommunityWidget extends StatefulWidget {
  const CommunityWidget({Key? key}) : super(key: key);

  @override
  _CommunityWidgetState createState() => _CommunityWidgetState();
}

class _CommunityWidgetState extends State<CommunityWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'Community',
        color: FlutterFlowTheme.of(context).primaryColor,
        child: Scaffold(
          key: scaffoldKey,
          appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * 0.165),
            child: AppBar(
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              flexibleSpace: Align(
                alignment: AlignmentDirectional(0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                        color: Color(0x59000000),
                        offset: Offset(2, 2),
                      )
                    ],
                  ),
                  child: MenuWidget(),
                ),
              ),
              actions: [],
              elevation: 0,
            ),
          ),
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          drawer: Drawer(
            elevation: 16,
            child: Column(
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
                  height: 133,
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
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                          child: Text(
                            '',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0x8A000000),
                                    ),
                          ),
                        ),
                      ),
                      expanded: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 100,
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
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
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
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
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
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
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
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
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
              ],
            ),
          ),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.07,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              FlutterFlowTheme.of(context).primaryColor,
                              FlutterFlowTheme.of(context).secondaryColor
                            ],
                            stops: [0, 1],
                            begin: AlignmentDirectional(0, -1),
                            end: AlignmentDirectional(0, 1),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                height: 100,
                                decoration: BoxDecoration(),
                                child: Align(
                                  alignment: AlignmentDirectional(0.25, 0),
                                  child: Text(
                                    '고민상담',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Roboto',
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      StreamBuilder<List<Post1Record>>(
                        stream: queryPost1Record(
                          limit: 33,
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: CircularProgressIndicator(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                ),
                              ),
                            );
                          }
                          List<Post1Record> con2MoPost1RecordList =
                              snapshot.data!;
                          return SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                  con2MoPost1RecordList.length, (con2MoIndex) {
                                final con2MoPost1Record =
                                    con2MoPost1RecordList[con2MoIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 12, 16, 0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4,
                                          color: Color(0x2B202529),
                                          offset: Offset(0, 2),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12, 12, 12, 12),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 5, 0, 5),
                                              child: InkWell(
                                                onTap: () async {
                                                  context.pushNamed(
                                                    'postView',
                                                    queryParams: {
                                                      'readPost': serializeParam(
                                                          con2MoPost1Record
                                                              .reference,
                                                          ParamType
                                                              .DocumentReference),
                                                    }.withoutNulls,
                                                  );
                                                },
                                                child: Text(
                                                  con2MoPost1Record.title!,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            Color(0xFF14181B),
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 16, 0, 0),
                                              child: InkWell(
                                                onTap: () async {
                                                  context.pushNamed(
                                                    'postView',
                                                    queryParams: {
                                                      'readPost': serializeParam(
                                                          con2MoPost1Record
                                                              .reference,
                                                          ParamType
                                                              .DocumentReference),
                                                    }.withoutNulls,
                                                  );
                                                },
                                                child: Text(
                                                  con2MoPost1Record.text!,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText2
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            Color(0xFF57636C),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Divider(
                                              height: 24,
                                              thickness: 1,
                                              color: Color(0xFFDBE2E7),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Container(
                                                  width: 110,
                                                  height: 55,
                                                  decoration: BoxDecoration(),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40),
                                                        child: Image.asset(
                                                          'assets/images/WM_profile-Oimg.png',
                                                          width: 20,
                                                          height: 20,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    4, 0, 0, 0),
                                                        child: Text(
                                                          con2MoPost1Record
                                                              .postID!,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                color: Color(
                                                                    0xFF4D4D4D),
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width: 1,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF7EDDE5),
                                                  ),
                                                ),
                                                Container(
                                                  width: 110,
                                                  height: 55,
                                                  decoration: BoxDecoration(),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons.thumb_up,
                                                        color:
                                                            Color(0xFF70CAF0),
                                                        size: 20,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    4, 0, 0, 0),
                                                        child: Text(
                                                          con2MoPost1Record
                                                              .goodNum!
                                                              .toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                                color: Color(
                                                                    0xFF70CAF0),
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width: 1,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF7EDDE5),
                                                  ),
                                                ),
                                                Container(
                                                  width: 110,
                                                  height: 55,
                                                  decoration: BoxDecoration(),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons.remove_red_eye,
                                                        color:
                                                            Color(0xFF70CAF0),
                                                        size: 20,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    4, 0, 0, 0),
                                                        child: Text(
                                                          con2MoPost1Record
                                                              .view!
                                                              .toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                                color: Color(
                                                                    0xFF70CAF0),
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                            ),
                          );
                        },
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 88,
                        decoration: BoxDecoration(),
                        child: FooterWidget(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
