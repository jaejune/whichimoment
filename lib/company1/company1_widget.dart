import '../components/footer_widget.dart';
import '../components/menu_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Company1Widget extends StatefulWidget {
  const Company1Widget({Key? key}) : super(key: key);

  @override
  _Company1WidgetState createState() => _Company1WidgetState();
}

class _Company1WidgetState extends State<Company1Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'Company1',
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
                      '????????? ?????????',
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
                      '?????? ?????????',
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
                      '????????????',
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
                      '?????????',
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
                        '?????? ??????',
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
                                '????????? ???',
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
                                '??????',
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
                                '????????????',
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
                                '??????',
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
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 70,
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.25, 0),
                              child: Text(
                                '????????????',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                      ))
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 888,
                          decoration: BoxDecoration(),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 50, 0, 0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.18,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 15),
                                              child: InkWell(
                                                onTap: () async {
                                                  context.pushNamed('Company1');
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.14,
                                                  height: 70,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF8DDDFF),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0, 0),
                                                    child: Text(
                                                      '????????????',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyText1
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: Colors.white,
                                                            fontSize: 20,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 15),
                                              child: InkWell(
                                                onTap: () async {
                                                  context.pushNamed('Company2');
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.14,
                                                  height: 70,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                    border: Border.all(
                                                      color: Color(0xFFD5F6FF),
                                                      width: 3,
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0, 0),
                                                    child: Text(
                                                      '????????????',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 18,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 15),
                                              child: InkWell(
                                                onTap: () async {
                                                  context.pushNamed('Company3');
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.14,
                                                  height: 70,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                    border: Border.all(
                                                      color: Color(0xFFD5F6FF),
                                                      width: 3,
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0, 0),
                                                    child: Text(
                                                      '??????',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 18,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () async {
                                                context.pushNamed(
                                                    'Company4_Notice');
                                              },
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.14,
                                                height: 70,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  border: Border.all(
                                                    color: Color(0xFFD5F6FF),
                                                    width: 3,
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Text(
                                                    '????????????',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 18,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.8,
                                      height: 777,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            30, 0, 0, 0),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 50, 0, 10),
                                                child: Text(
                                                  '???????????? ???',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFF414141),
                                                        fontSize: 30,
                                                      ),
                                                ),
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.77,
                                                height: 777,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      width: 333,
                                                      height: 333,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 4,
                                                            color: Color(
                                                                0x65000000),
                                                            offset:
                                                                Offset(3, 3),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(10, 0,
                                                                    10, 0),
                                                        child: Image.asset(
                                                          'assets/images/KakaoTalk_20220706_115530954.png',
                                                          width: 100,
                                                          height: 100,
                                                          fit: BoxFit.fitWidth,
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5, 0, 0, 0),
                                                        child: Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.34,
                                                          height: 888,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10,
                                                                        10,
                                                                        0,
                                                                        10),
                                                            child: Text(
                                                              '??????????????? ????????? ????????? ??????????????? ????????????.\n????????? ?????? ????????? ????????? ????????? ??? ?????? ??????????????? ??????????????????.\n?????????????????? ????????? ???????????? ??? ????????? ????????? ?????? ??? ?????? \n????????? ????????? ????????????????????? ?????????.\n????????? ???????????? ?????? ????????? ????????? ?????? ????????? ?????? ??? ?????? ???????????????.\n\n\n?????? ??? ???????????? ??????????????? ????????????.\n????????? ????????? ???????????? ????????? ????????? ????????? ????????? ???????????????.\n????????? ????????? ??????????????? ???????????? ??? ????????? ????????? ???????????? ???????????????.\n\n\n????????? ????????? ???????????????.. ???????????????..???\n????????? ???????????? ?????? ?????? ????????????????????? ?????????\n????????? ????????? ???????????? ???????????? ???????????? ????????? ???????????????.\n\n\n???????????? ?????? ????????? ????????? ????????? ?????? ????????? ????????? ????????????\n????????? ???????????? ???????????? ????????? ?????????, ???????????? ????????? ??? ?????????\n?????? ????????? ??????????????? ????????? ??? ??????????????? ????????? ??? ????????? ?????????????????????.',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                        22,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      if (responsiveVisibility(
                        context: context,
                        tablet: false,
                        tabletLandscape: false,
                        desktop: false,
                      ))
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                ))
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 20, 0, 10),
                                    child: Text(
                                      '???????????? ???',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 20,
                                          ),
                                    ),
                                  ),
                                if (responsiveVisibility(
                                  context: context,
                                  tablet: false,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 20, 0, 10),
                                    child: Text(
                                      '???????????? ???',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 16,
                                          ),
                                    ),
                                  ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                ))
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        30, 10, 30, 0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 350,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFEEEEEE),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 2,
                                            color: Color(0x5A000000),
                                            offset: Offset(2, 2),
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                if (responsiveVisibility(
                                  context: context,
                                  tablet: false,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15, 10, 15, 0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 250,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 2,
                                            color: Color(0x5A000000),
                                            offset: Offset(2, 2),
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 0, 20, 0),
                                        child: Image.asset(
                                          'assets/images/KakaoTalk_20220706_115530954.png',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                    ),
                                  ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                ))
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            40, 10, 40, 10),
                                        child: Text(
                                          '[?????? ??????]????????? ???????????? ????????? ?????????????????? ????????? ?????? ?????? ??? ????????? ????????????. ????????? ??? ????????? ????????? ?????????, ????????? ??? ????????? ???????????? ????????? ??? ????????? ??? ??? ?????? ?????? ????????????.\n\n?????? ?????? ???????????? ?????????????????? ????????? ????????? ???????????????, ????????? ?????? ?????? ??????????????? ?????? ????????? ?????? ???????????? ?????? ??????????????? ????????? ????????? ?????? ????????? ???????????????.\n\n?????????????????? ??????????????? ?????? ?????? ??????????????? ?????? ??? ????????? ????????? ?????? ?????? ?????? ?????? ?????? ??????????????? ???????????????.',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                if (responsiveVisibility(
                                  context: context,
                                  tablet: false,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15, 10, 15, 10),
                                        child: Text(
                                          '[?????? ??????]????????? ???????????? ????????? ?????????????????? ????????? ?????? ?????? ??? ????????? ????????????. ????????? ??? ????????? ????????? ?????????, ????????? ??? ????????? ???????????? ????????? ??? ????????? ??? ??? ?????? ?????? ????????????.\n\n?????? ?????? ???????????? ?????????????????? ????????? ????????? ???????????????, ????????? ?????? ?????? ??????????????? ?????? ????????? ?????? ???????????? ?????? ??????????????? ????????? ????????? ?????? ????????? ???????????????.\n\n?????????????????? ??????????????? ?????? ?????? ??????????????? ?????? ??? ????????? ????????? ?????? ?????? ?????? ?????? ?????? ??????????????? ???????????????.',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 12,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                ))
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 20, 0, 20),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 200,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFEEEEEE),
                                      ),
                                      child: Image.network(
                                        'https://images.unsplash.com/photo-1528114039593-4366cc08227d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8aXRhbHl8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                if (responsiveVisibility(
                                  context: context,
                                  tablet: false,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 20, 0, 20),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFEEEEEE),
                                      ),
                                      child: Image.network(
                                        'https://images.unsplash.com/photo-1528114039593-4366cc08227d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8aXRhbHl8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                ))
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 530,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE1F6FF),
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 2,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          35, 10, 53, 30),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.3,
                                            height: 300,
                                            decoration: BoxDecoration(),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '01',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFFB1E4E8),
                                                        fontSize: 30,
                                                      ),
                                                ),
                                                if (responsiveVisibility(
                                                  context: context,
                                                  tablet: false,
                                                  tabletLandscape: false,
                                                  desktop: false,
                                                ))
                                                  Text(
                                                    '???????????? ?????? ???',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFF91DFE5),
                                                        ),
                                                  ),
                                                if (responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                ))
                                                  Text(
                                                    '???????????? ?????? ???',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFF91DFE5),
                                                          fontSize: 30,
                                                        ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.7,
                                              height: 300,
                                              decoration: BoxDecoration(),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 50, 0, 0),
                                                    child: Text(
                                                      '????????? ???????????? ????????? ?????????????????? ????????? ?????? ?????? ??? ????????? ????????????. ????????? ??? ????????? ????????? ?????????, ????????? ??? ????????? ???????????? ????????? ??? ????????? ??? ??? ?????? ?????? ????????????.\n\n?????? ?????? ???????????? ?????????????????? ????????? ????????? ???????????????, ????????? ?????? ?????? ??????????????? ?????? ????????? ?????? ???????????? ?????? ??????????????? ????????? ????????? ?????? ????????? ???????????????.',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 20, 0, 0),
                                                    child: Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      height: 300,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFEEEEEE),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 2,
                                                            color: Color(
                                                                0x5A000000),
                                                            offset:
                                                                Offset(2, 2),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        child: Image.network(
                                                          'https://picsum.photos/seed/25/600',
                                                          width: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .width,
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                if (responsiveVisibility(
                                  context: context,
                                  tablet: false,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 390,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE1F6FF),
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 2,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15, 10, 15, 30),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.3,
                                            height: 300,
                                            decoration: BoxDecoration(),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '01',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFFB1E4E8),
                                                        fontSize: 30,
                                                      ),
                                                ),
                                                if (responsiveVisibility(
                                                  context: context,
                                                  tablet: false,
                                                  tabletLandscape: false,
                                                  desktop: false,
                                                ))
                                                  Text(
                                                    '???????????? ?????? ???',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFF91DFE5),
                                                        ),
                                                  ),
                                                if (responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                ))
                                                  Text(
                                                    '???????????? ?????? ???',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFF91DFE5),
                                                          fontSize: 30,
                                                        ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.7,
                                              height: 300,
                                              decoration: BoxDecoration(),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 50, 0, 0),
                                                    child: Text(
                                                      '????????? ???????????? ????????? ?????????????????? ????????? ?????? ?????? ??? ????????? ????????????. ????????? ??? ????????? ????????? ?????????, ????????? ??? ????????? ???????????? ????????? ??? ????????? ??? ??? ?????? ?????? ????????????.\n\n?????? ?????? ???????????? ?????????????????? ????????? ????????? ???????????????, ????????? ?????? ?????? ??????????????? ?????? ????????? ?????? ???????????? ?????? ??????????????? ????????? ????????? ?????? ????????? ???????????????.',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 11,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 20, 0, 0),
                                                    child: Container(
                                                      width: 300,
                                                      height: 130,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFEEEEEE),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 2,
                                                            color: Color(
                                                                0x5A000000),
                                                            offset:
                                                                Offset(2, 2),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        child: Image.network(
                                                          'https://picsum.photos/seed/25/600',
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                ))
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 20),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 530,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE1F6FF),
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 2,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            35, 10, 35, 10),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.3,
                                              height: 300,
                                              decoration: BoxDecoration(),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    '02',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFFB1E4E8),
                                                          fontSize: 30,
                                                        ),
                                                  ),
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    tablet: false,
                                                    tabletLandscape: false,
                                                    desktop: false,
                                                  ))
                                                    Text(
                                                      '???????????? ?????? ???',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0xFF91DFE5),
                                                              ),
                                                    ),
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                  ))
                                                    Text(
                                                      '???????????? ?????? ???',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0xFF91DFE5),
                                                                fontSize: 30,
                                                              ),
                                                    ),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.7,
                                                height: 330,
                                                decoration: BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 50, 0, 0),
                                                      child: Text(
                                                        '????????? ???????????? ????????? ?????????????????? ????????? ?????? ?????? ??? ????????? ????????????. ????????? ??? ????????? ????????? ?????????, ????????? ??? ????????? ???????????? ????????? ??? ????????? ??? ??? ?????? ?????? ????????????.\n\n?????? ?????? ???????????? ?????????????????? ????????? ????????? ???????????????, ????????? ?????? ?????? ??????????????? ?????? ????????? ?????? ???????????? ?????? ??????????????? ????????? ????????? ?????? ????????? ???????????????.',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 20, 0, 0),
                                                      child: Container(
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        height: 300,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFFEEEEEE),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 2,
                                                              color: Color(
                                                                  0x5A000000),
                                                              offset:
                                                                  Offset(2, 2),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          child: Image.network(
                                                            'https://picsum.photos/seed/911/600',
                                                            fit: BoxFit.fill,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                if (responsiveVisibility(
                                  context: context,
                                  tablet: false,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 30),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 380,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE1F6FF),
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 2,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15, 10, 15, 10),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.3,
                                              height: 300,
                                              decoration: BoxDecoration(),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    '02',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFFB1E4E8),
                                                          fontSize: 30,
                                                        ),
                                                  ),
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    tablet: false,
                                                    tabletLandscape: false,
                                                    desktop: false,
                                                  ))
                                                    Text(
                                                      '???????????? ?????? ???',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0xFF91DFE5),
                                                              ),
                                                    ),
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                  ))
                                                    Text(
                                                      '???????????? ?????? ???',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0xFF91DFE5),
                                                                fontSize: 30,
                                                              ),
                                                    ),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.7,
                                                height: 330,
                                                decoration: BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 50, 0, 0),
                                                      child: Text(
                                                        '????????? ???????????? ????????? ?????????????????? ????????? ?????? ?????? ??? ????????? ????????????. ????????? ??? ????????? ????????? ?????????, ????????? ??? ????????? ???????????? ????????? ??? ????????? ??? ??? ?????? ?????? ????????????.\n\n?????? ?????? ???????????? ?????????????????? ????????? ????????? ???????????????, ????????? ?????? ?????? ??????????????? ?????? ????????? ?????? ???????????? ?????? ??????????????? ????????? ????????? ?????? ????????? ???????????????.',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize: 11,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 20, 0, 0),
                                                      child: Container(
                                                        width: 300,
                                                        height: 130,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFFEEEEEE),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 2,
                                                              color: Color(
                                                                  0x5A000000),
                                                              offset:
                                                                  Offset(2, 2),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          child: Image.network(
                                                            'https://picsum.photos/seed/911/600',
                                                            fit: BoxFit.fill,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                ))
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        50, 20, 50, 20),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 900,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 2,
                                            color: Color(0x58000000),
                                            offset: Offset(2, 2),
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 10, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                            ))
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 30, 0, 10),
                                                child: Text(
                                                  '?????? ?????????',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 20,
                                                      ),
                                                ),
                                              ),
                                            Container(
                                              width: 500,
                                              height: 780,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 20, 0, 0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  child: Image.asset(
                                                    'assets/images/1550_organizational_chart.png',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      FooterWidget(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
