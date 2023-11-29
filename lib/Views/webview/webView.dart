import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewApp extends StatefulWidget {
  final String url;
  final String title;

  WebViewApp({required this.url, required this.title});

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Shimmer.fromColors(
          baseColor: Color.fromRGBO(1, 138, 194, 1),
          highlightColor: Colors.white,
          child: AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(widget.title,
                  textStyle: const TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
      body: WebViewExample(url: widget.url),
    );
  }
}

class WebViewExample extends StatefulWidget {
  final String url;

  WebViewExample({required this.url});

  @override
  _WebViewExampleState createState() => _WebViewExampleState();
}

class _WebViewExampleState extends State<WebViewExample> {
  @override
  Widget build(BuildContext context) {
    return WebView(
      allowsInlineMediaPlayback: true,
      initialUrl: widget.url,
      javascriptMode:
          JavascriptMode.unrestricted, // Use the URL from the widget
    );
  }
}
