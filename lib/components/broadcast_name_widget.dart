import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BroadcastNameWidget extends StatefulWidget {
  const BroadcastNameWidget({Key? key}) : super(key: key);

  @override
  _BroadcastNameWidgetState createState() => _BroadcastNameWidgetState();
}

class _BroadcastNameWidgetState extends State<BroadcastNameWidget> {
  TextEditingController? pinCodeController;
  TextEditingController? textController;

  @override
  void initState() {
    super.initState();
    pinCodeController = TextEditingController();
    textController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Color(0x3B1D2429),
            offset: Offset(0, -3),
          )
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '위치모먼트를 통해 진행하는 온라인 상담으로 인하여 비용이 발생할 수 있으며, 이에 대해 이용자는 아래 버튼을 누르는 것로 약관에 동의하는 것으로 간주합니다.',
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                  ),
            ),
            Container(
              width: 333,
              height: 55,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    color: Color(0x33000000),
                    offset: Offset(2, 2),
                    spreadRadius: 2,
                  )
                ],
                borderRadius: BorderRadius.circular(11),
              ),
              child: TextFormField(
                controller: textController,
                onChanged: (_) => EasyDebounce.debounce(
                  'textController',
                  Duration(milliseconds: 2000),
                  () => setState(() {}),
                ),
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: '상담선생님의 이름을 입력하세요.',
                  hintStyle: FlutterFlowTheme.of(context).bodyText2,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(11),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(11),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(11),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(11),
                  ),
                  suffixIcon: textController!.text.isNotEmpty
                      ? InkWell(
                          onTap: () async {
                            textController?.clear();
                            setState(() {});
                          },
                          child: Icon(
                            Icons.clear,
                            color: Color(0xFF757575),
                            size: 22,
                          ),
                        )
                      : null,
                ),
                style: FlutterFlowTheme.of(context).bodyText1,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 33, 0, 0),
              child: Text(
                '상담 비밀번호 입력',
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
            ),
            PinCodeTextField(
              appContext: context,
              length: 4,
              textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).secondaryColor,
                  ),
              mainAxisAlignment: MainAxisAlignment.center,
              enableActiveFill: false,
              autoFocus: true,
              showCursor: true,
              cursorColor: FlutterFlowTheme.of(context).primaryColor,
              obscureText: false,
              hintCharacter: '●',
              pinTheme: PinTheme(
                fieldHeight: 60,
                fieldWidth: 60,
                borderWidth: 2,
                borderRadius: BorderRadius.circular(12),
                shape: PinCodeFieldShape.box,
                activeColor: FlutterFlowTheme.of(context).secondaryColor,
                inactiveColor: FlutterFlowTheme.of(context).primaryBackground,
                selectedColor: FlutterFlowTheme.of(context).secondaryText,
                activeFillColor: FlutterFlowTheme.of(context).secondaryColor,
                inactiveFillColor:
                    FlutterFlowTheme.of(context).primaryBackground,
                selectedFillColor: FlutterFlowTheme.of(context).secondaryText,
              ),
              controller: pinCodeController,
              onChanged: (_) => {},
              onCompleted: (_) async {
                await launchURL('https://hoca.monster/${textController!.text}');
              },
            ),
          ],
        ),
      ),
    );
  }
}
