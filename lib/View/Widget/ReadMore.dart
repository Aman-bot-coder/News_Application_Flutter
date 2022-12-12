import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:io';

import 'package:webview_flutter/webview_flutter.dart';
class ReadMore extends StatefulWidget {
  String newsUrl;
  ReadMore({Key? key,required this.newsUrl}) ;

  @override
  State<ReadMore> createState() => _ReadMoreState();
}

class _ReadMoreState extends State<ReadMore> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.newsUrl = widget.newsUrl.contains("http:")
        ?widget.newsUrl.replaceAll("http:", "https:")
        :widget.newsUrl;
  }
  final Completer<WebViewController> controller = Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("I-NEWS"),
        backgroundColor: Colors.black,
      ),

        body:WebView(
        initialUrl: widget.newsUrl,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController){
          setState(() {
            controller.complete(webViewController);
          });

        },
      )

    );
  }
}
