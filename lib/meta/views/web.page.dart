import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class FlutterWebviewExample extends StatelessWidget {
  const FlutterWebviewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Webview example"),
      ),
      body: const WebView(initialUrl: "https://flutter.dev/")
    );
  }
}
// https://flutter.dev/