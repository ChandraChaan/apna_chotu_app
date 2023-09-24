import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaymentWebView extends StatelessWidget {
  final String initialUrl;

  PaymentWebView({required this.initialUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complete Payment'),
      ),
      body: WebView(
        initialUrl: initialUrl,
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
