import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ChannelTalkScreen extends StatefulWidget {
  ChannelTalkScreen({Key? key}) : super(key: key);

  @override
  State<ChannelTalkScreen> createState() => _ChannelTalkScreenState();
}

class _ChannelTalkScreenState extends State<ChannelTalkScreen> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = AndroidWebView();
    }
  }

  JavascriptChannel _toasterJavascriptChannel(BuildContext context) {
    return JavascriptChannel(
        name: 'Toaster',
        onMessageReceived: (JavascriptMessage message) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: WebView(
        initialUrl: 'https://840qp.channel.io/support-bots/49364',
        javascriptMode: JavascriptMode.unrestricted,
        // onWebViewCreated: (WebViewController webViewController) {
        //   _controller.complete(webViewController);
        // },
        // onProgress: (int progress) {
        //   print('WebView is loading (progress : $progress%)');
        // },
        // javascriptChannels: <JavascriptChannel>{
        //   _toasterJavascriptChannel(context),
        // },
        // navigationDelegate: (NavigationRequest request) {
        //   if (request.url.startsWith('https://www.youtube.com/')) {
        //     print('blocking navigation to $request}');
        //     return NavigationDecision.prevent;
        //   }
        //   print('allowing navigation to $request');
        //   return NavigationDecision.navigate;
        // },
        // onPageStarted: (String url) {
        //   print('Page started loading: $url');
        // },
        // onPageFinished: (String url) {
        //   print('Page finished loading: $url');
        // },
        // gestureNavigationEnabled: true,
        // backgroundColor: const Color(0x00000000),
      )),
    );
  }
}
