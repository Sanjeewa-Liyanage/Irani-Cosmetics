import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:iranicosmatics/screens/const/const.dart';
import 'package:iranicosmatics/screens/slidebar.dart';
import 'package:url_launcher/url_launcher.dart';

class Webwizards extends StatefulWidget {
  const Webwizards({super.key});

  @override
  State<Webwizards> createState() => _WebwizardsState();
}

class _WebwizardsState extends State<Webwizards> {
  double _progress = 0;
  late InAppWebViewController inAppWebViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Nav(),
      bottomNavigationBar: SizedBox(
        height: 40,
        width: 8,
        child: Padding(
          padding: EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Text(
                "powered by ",
                style: TextStyle(color: Colors.black),
              ),
              InkWell(
                child: Text(
                  "Web Wizards",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                onTap: () async {
                  var url = "https://webwizardsolution.com/";
                  // ignore: deprecated_member_use
                  if (await canLaunch(url)) {
                    // ignore: deprecated_member_use
                    await launch(url);
                  } else {
                    throw "Can not load";
                  }
                },
              ),
            ],
          ),
        ),
      ),
      backgroundColor: bgcolor,
      appBar: AppBar(
        backgroundColor: bgcolor,
        title: const Text(
          "Irani Cosmatics",
          style: TextStyle(color: textcolor, fontWeight: FontWeight.bold),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Stack(
        children: [
          _progress < 1
              ? Container(
                  child: LinearProgressIndicator(value: _progress),
                )
              : const SizedBox(),
          Container(
            child: InAppWebView(
              initialUrlRequest: URLRequest(
                url: Uri.parse("https://iranicosmetics.lk/"),
              ),
              onWebViewCreated: (InAppWebViewController controller) {
                inAppWebViewController = controller;
              },
              onProgressChanged:
                  (InAppWebViewController controller, int progress) {
                setState(() {
                  _progress = progress / 100;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
