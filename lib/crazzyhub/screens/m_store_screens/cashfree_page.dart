import 'dart:io'; // Add this import to check the platform
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CashfreePage extends StatefulWidget {
  const CashfreePage({super.key});

  @override
  State<CashfreePage> createState() => _CashfreePageState();
}

class _CashfreePageState extends State<CashfreePage> {
  @override
  void initState() {
    super.initState();
    // Check if the platform is Android and set the WebView platform to SurfaceAndroidWebView
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebView(
          initialUrl: 'https://payments.cashfree.com/order/#IslFCCOTEyS7ILxu1ydT',
        ),
      ),
    );
  }
}
