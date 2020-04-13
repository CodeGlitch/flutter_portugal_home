import 'package:flutter/material.dart';
import 'package:flutter_portugal_home/resources/strings.dart';
import 'package:flutter_portugal_home/resources/style/colors.dart';
import 'package:flutter_portugal_home/resources/style/text_styles.dart';
import 'package:flutter_portugal_home/utils/launch_url.dart';

class Meetup extends StatelessWidget {
  const Meetup({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          meetupTitle,
          style: TextStyles.headline4(
            color: FlutterPTColors.blue,
          ),
        ),
        Text(
          meetupDescription,
          style: TextStyles.bodyText2(
            color: FlutterPTColors.black,
          ),
        ),
        RaisedButton(
          color: FlutterPTColors.blue,
          textColor: FlutterPTColors.white,
          onPressed: () {
            launchURL(meetupUrl);
          },
          child: Text(meetuprButton),
        ),
      ],
    );
  }
}
