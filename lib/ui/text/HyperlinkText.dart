import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HyperlinkText extends StatelessWidget {
  final String url;
  final String text;

  HyperlinkText({@required this.url, this.text});

  _launchURL() async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Text(
        text ?? url,
        style: TextStyle(decoration: TextDecoration.underline),
      ),
      onTap: _launchURL,
    );
  }
}
