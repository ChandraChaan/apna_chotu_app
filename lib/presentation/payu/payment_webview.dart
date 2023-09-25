import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaymentWebView extends StatefulWidget {
  final String? initialUrl;

  PaymentWebView({this.initialUrl});

  @override
  _PaymentWebViewState createState() => _PaymentWebViewState();
}

class _PaymentWebViewState extends State<PaymentWebView> {
  late String contentToLoad;

  @override
  void initState() {
    super.initState();

    if (widget.initialUrl == null || widget.initialUrl!.isEmpty) {
      contentToLoad = """
        <html>
        <head>
          <title>Sample HTML Page</title>
        </head>
        <body>
          <h1>Welcome to the Sample HTML Page</h1>
          <p>This is a simple paragraph.</p>
        </body>
        </html>
      """;
    } else {
      contentToLoad = widget.initialUrl!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complete Payment'),
      ),
      body: WebView(
        initialUrl: widget.initialUrl,
        javascriptMode: JavascriptMode.unrestricted,
        navigationDelegate: (NavigationRequest request) {
          // Here you can handle specific URLs or actions, like detecting payment success or failure
          return NavigationDecision.navigate;
        },
        onPageFinished: (url) {
          // Handle actions once the page loads if necessary
        },
      ),
    );
  }
}
