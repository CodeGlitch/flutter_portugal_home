import 'package:flutter/material.dart';
import 'package:flutter_portugal_home/resources/style/colors.dart';
import 'package:flutter_portugal_home/resources/style/text_styles.dart';

class JoinText extends StatelessWidget {
  const JoinText({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Join the community!",
          style: TextStyles.bodyText1(
            color: FlutterPTColors.blue,
          ),
        ),
      ],
    );
  }
}
