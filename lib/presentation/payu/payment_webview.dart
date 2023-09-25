import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaymentWebView extends StatelessWidget {
  final String initialUrl;

  PaymentWebView({required this.initialUrl});
  var htmlContent = """
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complete Payment'),
      ),
      body: WebView(
        initialUrl: Uri.dataFromString(
            initialUrl,
            mimeType: 'text/html',
            encoding: Encoding.getByName('utf-8')
        ).toString(),
        // initialUrl: initialUrl,
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
