import 'package:flutter/material.dart';
import 'package:flutter_portugal_home/resources/style/colors.dart';
import 'package:flutter_portugal_home/resources/style/text_styles.dart';

class PortugalText extends StatelessWidget {
  const PortugalText({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Portugal",
          style: TextStyles.headline2(
            color: FlutterPTColors.blueLight,
          ),
        ),
      ],
    );
  }
}
