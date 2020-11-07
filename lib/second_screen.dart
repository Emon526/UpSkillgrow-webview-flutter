import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: WebView(
            initialUrl: "https://upskillgrow.pro///",
            javascriptMode: JavascriptMode.unrestricted,
          ),
        ),
      ),
    );
  }
}
