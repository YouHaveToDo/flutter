import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller;
  final homeUrl = 'https://blog.codefactory.ai';

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Code Factory'),
        centerTitle: true,
        backgroundColor: Colors.orange,
        actions: [
          IconButton(
              onPressed: () {
                if(controller == null) {
                  return;
                }
                controller!.loadUrl(homeUrl);
              },
              icon: Icon(
                Icons.home,
              ))
        ],
      ),
      body: WebView(
        onWebViewCreated: (WebViewController controller) {
          this.controller = controller;
        },
        initialUrl: homeUrl,
        // webview 에서 자바스크립트를 사용하기 위함.
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
