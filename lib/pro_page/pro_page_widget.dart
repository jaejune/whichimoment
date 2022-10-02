import '../backend/backend.dart';
import '../components/menu_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class ProPageWidget extends StatefulWidget {
  const ProPageWidget({
    Key? key,
    this.filterBasic,
    this.filterRecent,
    this.filterBest,
  }) : super(key: key);

  final String? filterBasic;
  final String? filterRecent;
  final String? filterBest;

  @override
  _ProPageWidgetState createState() => _ProPageWidgetState();
}

class _ProPageWidgetState extends State<ProPageWidget>
    with TickerProviderStateMixin {
  PagingController<DocumentSnapshot?, PersonRecord>? _pagingController;
  Query? _pagingQuery;
  List<StreamSubscription?> _streamSubscriptions = [];

  String? dropDownValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 100),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'rowOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 20),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 100),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'rowOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 20),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _streamSubscriptions.forEach((s) => s?.cancel());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'pro_page',
        color: FlutterFlowTheme.of(context).primaryColor,
        child: Scaffold(
          key: scaffoldKey,
          appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * 0.16),
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
          backgroundColor: Colors.white,
          drawer: Drawer(
            elevation: 16,
            child: SingleChildScrollView(
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
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                            child: Text(
                              '',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
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
                          child: SingleChildScrollView(
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
                        ),
                        theme: ExpandableThemeData(
                          tapHeaderToExpand: true,
                          tapBodyToExpand: false,
                          tapBodyToCollapse: false,
                          headerAlignment:
                              ExpandablePanelHeaderAlignment.center,
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
          ),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: SingleChildScrollView(
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
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
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          '전문 상담사 찾기',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Roboto',
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.08,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.98,
                            height: 100,
                            decoration: BoxDecoration(),
                            child: ListView(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.horizontal,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 25, 0),
                                    child: InkWell(
                                      onTap: () async {
                                        context.pushNamed(
                                          'pro_page',
                                          queryParams: {
                                            'filterBasic': serializeParam(
                                                '기본정렬', ParamType.String),
                                          }.withoutNulls,
                                        );
                                      },
                                      child: Text(
                                        '기본정렬',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Roboto',
                                              color: Color(0xFF626F79),
                                              fontSize: 18,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 25, 0),
                                    child: InkWell(
                                      onTap: () async {
                                        context.pushNamed(
                                          'pro_page',
                                          queryParams: {
                                            'filterRecent': serializeParam(
                                                'recent', ParamType.String),
                                          }.withoutNulls,
                                        );
                                      },
                                      child: Text(
                                        '최근등록순',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Roboto',
                                              color: Color(0xFF828384),
                                              fontSize: 18,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 25, 0),
                                    child: InkWell(
                                      onTap: () async {
                                        context.pushNamed('pro_page');
                                      },
                                      child: Text(
                                        '만족도순',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Roboto',
                                              color: Color(0xFF828384),
                                              fontSize: 18,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 25, 0),
                                    child: InkWell(
                                      onTap: () async {
                                        context.pushNamed('pro_page');
                                      },
                                      child: Text(
                                        '상담 회기순',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Roboto',
                                              color: Color(0xFF828384),
                                              fontSize: 18,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 25, 0),
                                    child: Text(
                                      '높은가격순',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: Color(0xFF828384),
                                            fontSize: 18,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 25, 0),
                                    child: Text(
                                      '낮은가격순',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: Color(0xFF828384),
                                            fontSize: 18,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 25, 0),
                                    child: Text(
                                      '부부상담 전문',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: Color(0xFF828384),
                                            fontSize: 18,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                ),
                                FlutterFlowDropDown(
                                  options: ['최근등록순', '만족도순'],
                                  onChanged: (val) =>
                                      setState(() => dropDownValue = val),
                                  width: 180,
                                  height: 50,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                      ),
                                  hintText: '정렬 방법 선택',
                                  fillColor: Colors.white,
                                  elevation: 2,
                                  borderColor: Colors.transparent,
                                  borderWidth: 0,
                                  borderRadius: 0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      12, 4, 12, 4),
                                  hidesUnderline: true,
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 25, 0),
                                    child: Text(
                                      '연애상담 전문',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: Color(0xFF828384),
                                            fontSize: 18,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 25, 0),
                                    child: Text(
                                      '청소년상담 전문',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: Color(0xFF828384),
                                            fontSize: 18,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 25, 0),
                                    child: Text(
                                      '성인상담 전문',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: Color(0xFF828384),
                                            fontSize: 18,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 25, 0),
                                    child: Text(
                                      '심리검사 전문',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: Color(0xFF828384),
                                            fontSize: 18,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    if (responsiveVisibility(
                      context: context,
                      desktop: false,
                    ))
                      PagedListView<DocumentSnapshot<Object?>?, PersonRecord>(
                        pagingController: () {
                          final Query<Object?> Function(Query<Object?>)
                              queryBuilder = (personRecord) => personRecord
                                  .where('whoU', isEqualTo: '전문상담사');
                          if (_pagingController != null) {
                            final query = queryBuilder(PersonRecord.collection);
                            if (query != _pagingQuery) {
                              // The query has changed
                              _pagingQuery = query;
                              _streamSubscriptions.forEach((s) => s?.cancel());
                              _streamSubscriptions.clear();
                              _pagingController!.refresh();
                            }
                            return _pagingController!;
                          }

                          _pagingController =
                              PagingController(firstPageKey: null);
                          _pagingQuery = queryBuilder(PersonRecord.collection);
                          _pagingController!
                              .addPageRequestListener((nextPageMarker) {
                            queryPersonRecordPage(
                              queryBuilder: (personRecord) => personRecord
                                  .where('whoU', isEqualTo: '전문상담사'),
                              nextPageMarker: nextPageMarker,
                              pageSize: 25,
                              isStream: true,
                            ).then((page) {
                              _pagingController!.appendPage(
                                page.data,
                                page.nextPageMarker,
                              );
                              final streamSubscription =
                                  page.dataStream?.listen((data) {
                                final itemIndexes = _pagingController!.itemList!
                                    .asMap()
                                    .map((k, v) => MapEntry(v.reference.id, k));
                                data.forEach((item) {
                                  final index = itemIndexes[item.reference.id];
                                  final items = _pagingController!.itemList!;
                                  if (index != null) {
                                    items
                                        .replaceRange(index, index + 1, [item]);
                                    _pagingController!.itemList = {
                                      for (var item in items)
                                        item.reference: item
                                    }.values.toList();
                                  }
                                });
                                setState(() {});
                              });
                              _streamSubscriptions.add(streamSubscription);
                            });
                          });
                          return _pagingController!;
                        }(),
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        builderDelegate:
                            PagedChildBuilderDelegate<PersonRecord>(
                          // Customize what your widget looks like when it's loading the first page.
                          firstPageProgressIndicatorBuilder: (_) => Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircularProgressIndicator(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                            ),
                          ),

                          itemBuilder: (context, _, listViewMoIndex) {
                            final listViewMoPersonRecord =
                                _pagingController!.itemList![listViewMoIndex];
                            return Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 15, 0, 12),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.88,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 5,
                                        color: Color(0x1F000000),
                                        offset: Offset(0, 2),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        33, 20, 33, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    11, 11, 11, 11),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 5),
                                                    child: Container(
                                                      width: 222,
                                                      height: 222,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFECECEC),
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    3, 3, 3, 3),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100),
                                                          child: Image.network(
                                                            listViewMoPersonRecord
                                                                .photoUrl!,
                                                            width: 120,
                                                            height: 100,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 11, 0, 0),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        context.pushNamed(
                                                          'reserveCalendar',
                                                          queryParams: {
                                                            'reserve': serializeParam(
                                                                listViewMoPersonRecord
                                                                    .reference,
                                                                ParamType
                                                                    .DocumentReference),
                                                          }.withoutNulls,
                                                        );
                                                      },
                                                      text: '예약하기',
                                                      options: FFButtonOptions(
                                                        width: 130,
                                                        height: 40,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .subtitle2
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                8, 12, 0, 0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        SingleChildScrollView(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            11,
                                                                            0,
                                                                            0),
                                                                    child: Text(
                                                                      listViewMoPersonRecord
                                                                          .displayName!,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .title3
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            color:
                                                                                Color(0xFF141617),
                                                                            fontSize:
                                                                                20,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            11,
                                                                            0,
                                                                            0),
                                                                    child: Text(
                                                                      ' 선생님',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .title3
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            color:
                                                                                Color(0xFF141617),
                                                                            fontSize:
                                                                                20,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            22,
                                                                            11,
                                                                            0,
                                                                            2),
                                                                        child:
                                                                            Text(
                                                                          listViewMoPersonRecord
                                                                              .days7!,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'Roboto',
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                fontSize: 12,
                                                                                fontWeight: FontWeight.w200,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0, 0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          22,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: 166,
                                                                    height: 100,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                    ),
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          ListView(
                                                                        padding:
                                                                            EdgeInsets.zero,
                                                                        scrollDirection:
                                                                            Axis.vertical,
                                                                        children: [
                                                                          Text(
                                                                            listViewMoPersonRecord.introduce!,
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyText1,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ).animated([
                                                      animationsMap[
                                                          'rowOnPageLoadAnimation1']!
                                                    ]),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ).animated([
                                  animationsMap[
                                      'containerOnPageLoadAnimation1']!
                                ]),
                              ),
                            );
                          },
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                      tabletLandscape: false,
                    ))
                      StreamBuilder<List<PersonRecord>>(
                        stream: queryPersonRecord(
                          queryBuilder: (personRecord) =>
                              personRecord.where('whoU', isEqualTo: '1'),
                          limit: 5,
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
                          List<PersonRecord> listViewPCPersonRecordList =
                              snapshot.data!;
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewPCPersonRecordList.length,
                            itemBuilder: (context, listViewPCIndex) {
                              final listViewPCPersonRecord =
                                  listViewPCPersonRecordList[listViewPCIndex];
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 15, 0, 12),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.88,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 5,
                                        color: Color(0x1F000000),
                                        offset: Offset(0, 2),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        33, 20, 33, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  33, 0, 0, 5),
                                          child: Container(
                                            width: 222,
                                            height: 222,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFECECEC),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(3, 3, 3, 3),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                child: Image.network(
                                                  listViewPCPersonRecord
                                                      .photoUrl!,
                                                  width: 120,
                                                  height: 100,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  22, 11, 11, 11),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(8, 12, 0, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child: Text(
                                                                    '예약하기',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              Color(0xFF3FA5D1),
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          11,
                                                                          0,
                                                                          0),
                                                                  child: Text(
                                                                    listViewPCPersonRecord
                                                                        .displayName!,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .title3
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          color:
                                                                              Color(0xFF141617),
                                                                          fontSize:
                                                                              20,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              22,
                                                                              11,
                                                                              0,
                                                                              2),
                                                                      child: StreamBuilder<
                                                                          List<
                                                                              PersonRecord>>(
                                                                        stream:
                                                                            queryPersonRecord(
                                                                          singleRecord:
                                                                              true,
                                                                        ),
                                                                        builder:
                                                                            (context,
                                                                                snapshot) {
                                                                          // Customize what your widget looks like when it's loading.
                                                                          if (!snapshot
                                                                              .hasData) {
                                                                            return Center(
                                                                              child: SizedBox(
                                                                                width: 50,
                                                                                height: 50,
                                                                                child: CircularProgressIndicator(
                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                ),
                                                                              ),
                                                                            );
                                                                          }
                                                                          List<PersonRecord>
                                                                              textPersonRecordList =
                                                                              snapshot.data!;
                                                                          // Return an empty Container when the document does not exist.
                                                                          if (snapshot
                                                                              .data!
                                                                              .isEmpty) {
                                                                            return Container();
                                                                          }
                                                                          final textPersonRecord = textPersonRecordList.isNotEmpty
                                                                              ? textPersonRecordList.first
                                                                              : null;
                                                                          return Text(
                                                                            listViewPCPersonRecord.days7!,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Roboto',
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  fontSize: 12,
                                                                                  fontWeight: FontWeight.w200,
                                                                                ),
                                                                          );
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0, 0),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            22,
                                                                            0,
                                                                            0),
                                                                child:
                                                                    Container(
                                                                  width: 166,
                                                                  height: 100,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0,
                                                                            0),
                                                                    child:
                                                                        ListView(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      scrollDirection:
                                                                          Axis.vertical,
                                                                      children: [
                                                                        Text(
                                                                          listViewPCPersonRecord
                                                                              .company!,
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyText1,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ).animated([
                                                    animationsMap[
                                                        'rowOnPageLoadAnimation2']!
                                                  ]),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 24),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.55,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(16, 0, 16, 0),
                                                child: Container(
                                                  width: double.infinity,
                                                  color: Colors.white,
                                                  child: ExpandableNotifier(
                                                    initialExpanded: false,
                                                    child: ExpandablePanel(
                                                      header: Text(
                                                        '상담사 정보 더보기',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  color: Color(
                                                                      0x8D0F1113),
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                      ),
                                                      collapsed: Container(
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        decoration:
                                                            BoxDecoration(),
                                                      ),
                                                      expanded: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            height: 444,
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          12,
                                                                          0,
                                                                          0),
                                                              child:
                                                                  DefaultTabController(
                                                                length: 2,
                                                                initialIndex: 0,
                                                                child: Column(
                                                                  children: [
                                                                    TabBar(
                                                                      labelColor:
                                                                          Color(
                                                                              0xFF1D2429),
                                                                      unselectedLabelColor:
                                                                          Color(
                                                                              0xFF57636C),
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            color:
                                                                                Color(0xFF1D2429),
                                                                            fontSize:
                                                                                18,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                      indicatorColor:
                                                                          Color(
                                                                              0xFF1D2429),
                                                                      tabs: [
                                                                        Tab(
                                                                          text:
                                                                              '소개',
                                                                        ),
                                                                        Tab(
                                                                          text:
                                                                              '후기',
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          TabBarView(
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0,
                                                                                0,
                                                                                0,
                                                                                1),
                                                                            child:
                                                                                ListView(
                                                                              padding: EdgeInsets.zero,
                                                                              shrinkWrap: true,
                                                                              scrollDirection: Axis.vertical,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 8),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Expanded(
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                                                                                              child: Text(
                                                                                                '상담사 소개',
                                                                                                style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                      fontFamily: 'Roboto',
                                                                                                      color: Color(0xFF57636C),
                                                                                                      fontSize: 14,
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                                                                              child: Text(
                                                                                                listViewPCPersonRecord.introduce!,
                                                                                                style: FlutterFlowTheme.of(context).title3.override(
                                                                                                      fontFamily: 'Roboto',
                                                                                                      color: Color(0xFF1D2429),
                                                                                                      fontSize: 12,
                                                                                                      fontWeight: FontWeight.w300,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 11, 0, 11),
                                                                                child: Text(
                                                                                  '상담사 후기',
                                                                                  style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                        fontFamily: 'Roboto',
                                                                                        color: Color(0xFF57636C),
                                                                                        fontSize: 14,
                                                                                        fontWeight: FontWeight.normal,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: ListView(
                                                                                  padding: EdgeInsets.zero,
                                                                                  primary: false,
                                                                                  shrinkWrap: true,
                                                                                  scrollDirection: Axis.vertical,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                          Expanded(
                                                                                            child: StreamBuilder<List<AfterSayRecord>>(
                                                                                              stream: queryAfterSayRecord(
                                                                                                queryBuilder: (afterSayRecord) => afterSayRecord.orderBy('goodNum', descending: true),
                                                                                              ),
                                                                                              builder: (context, snapshot) {
                                                                                                // Customize what your widget looks like when it's loading.
                                                                                                if (!snapshot.hasData) {
                                                                                                  return Center(
                                                                                                    child: SizedBox(
                                                                                                      width: 50,
                                                                                                      height: 50,
                                                                                                      child: CircularProgressIndicator(
                                                                                                        color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                      ),
                                                                                                    ),
                                                                                                  );
                                                                                                }
                                                                                                List<AfterSayRecord> columnAfterSayRecordList = snapshot.data!;
                                                                                                return Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                  children: List.generate(columnAfterSayRecordList.length, (columnIndex) {
                                                                                                    final columnAfterSayRecord = columnAfterSayRecordList[columnIndex];
                                                                                                    return Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 7),
                                                                                                      child: Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                        children: [
                                                                                                          Row(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            children: [
                                                                                                              Icon(
                                                                                                                Icons.star_sharp,
                                                                                                                color: Color(0xFFFFBE00),
                                                                                                                size: 18,
                                                                                                              ),
                                                                                                              Text(
                                                                                                                columnAfterSayRecord.goodNum!.toString(),
                                                                                                                style: FlutterFlowTheme.of(context).bodyText1,
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                          Container(
                                                                                                            width: MediaQuery.of(context).size.width * 0.45,
                                                                                                            height: 40,
                                                                                                            decoration: BoxDecoration(),
                                                                                                            child: Padding(
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                                                                                                              child: Text(
                                                                                                                columnAfterSayRecord.title!,
                                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                      fontFamily: 'Poppins',
                                                                                                                      fontSize: 12,
                                                                                                                    ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    );
                                                                                                  }),
                                                                                                );
                                                                                              },
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 11, 0, 11),
                                                                                child: Container(
                                                                                  width: 150,
                                                                                  height: 40,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0xFFC6EBFF),
                                                                                    borderRadius: BorderRadius.only(
                                                                                      bottomLeft: Radius.circular(40),
                                                                                      bottomRight: Radius.circular(40),
                                                                                      topLeft: Radius.circular(20),
                                                                                      topRight: Radius.circular(40),
                                                                                    ),
                                                                                  ),
                                                                                  child: FFButtonWidget(
                                                                                    onPressed: () {
                                                                                      print('Button pressed ...');
                                                                                    },
                                                                                    text: '예약하기',
                                                                                    options: FFButtonOptions(
                                                                                      width: 130,
                                                                                      height: 40,
                                                                                      color: Color(0xFF8DDDFF),
                                                                                      textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            color: Colors.white,
                                                                                            fontSize: 14,
                                                                                          ),
                                                                                      borderSide: BorderSide(
                                                                                        color: Colors.transparent,
                                                                                        width: 1,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(12),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
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
                                                      theme:
                                                          ExpandableThemeData(
                                                        tapHeaderToExpand: true,
                                                        tapBodyToExpand: false,
                                                        tapBodyToCollapse:
                                                            false,
                                                        headerAlignment:
                                                            ExpandablePanelHeaderAlignment
                                                                .center,
                                                        hasIcon: true,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ).animated([
                                  animationsMap[
                                      'containerOnPageLoadAnimation2']!
                                ]),
                              );
                            },
                          );
                        },
                      ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
