import 'package:flutter/material.dart';
import 'package:flutter_portugal_home/resources/style/colors.dart';
import 'package:flutter_portugal_home/resources/style/text_styles.dart';

class TopText extends StatelessWidget {
  final String title;
  TopText(this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          title,
          style: TextStyles.headline3(
            color: FlutterPTColors.blue,
          ),
        ),
      ],
    );
  }
}
