import 'package:flutter/material.dart';
import 'package:flutter_portugal_home/resources/strings.dart';
import 'package:flutter_portugal_home/resources/style/colors.dart';
import 'package:flutter_portugal_home/resources/style/text_styles.dart';
import 'package:flutter_portugal_home/utils/launch_url.dart';

class Twitter extends StatelessWidget {
  const Twitter({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          twitterTitle,
          style: TextStyles.headline4(
            color: FlutterPTColors.blue,
          ),
        ),
        Text(
          twitterDescription,
          style: TextStyles.bodyText2(
            color: FlutterPTColors.black,
          ),
        ),
        RaisedButton(
          color: FlutterPTColors.blue,
          textColor: FlutterPTColors.white,
          onPressed: () {
            launchURL(twitterUrl);
          },
          child: Text(twitterButton),
        ),
      ],
    );
  }
}
