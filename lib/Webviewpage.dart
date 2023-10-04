import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Web_View extends StatefulWidget {
  const Web_View({super.key, required this.Link});

  final String Link;

  @override
  State<Web_View> createState() => _Web_ViewState();
}

class _Web_ViewState extends State<Web_View> {
  bool isloading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          WebView(
            initialUrl: widget.Link,
            javascriptMode: JavascriptMode.unrestricted,
            onPageStarted: (url) {
              Future.delayed(Duration(milliseconds: 1000), () {
                setState(
                  () {
                    isloading = false;
                  },
                );
              });
            },
            onPageFinished: (url) {},
          ),
          if (isloading) Center(child: CircularProgressIndicator()),
        ]),
      ),
    );
  }
}
