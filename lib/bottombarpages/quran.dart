import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Quran extends StatefulWidget {
  const Quran({ Key? key }) : super(key: key);

  @override
  _QuranState createState() => _QuranState();
}

class _QuranState extends State<Quran> {
   final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
       WebView(
        initialUrl: 'https://assistmyhome.com/noblequran',
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
      
       )
        
        );
      
    
  }
}