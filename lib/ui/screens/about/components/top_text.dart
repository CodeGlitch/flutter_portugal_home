import 'package:flutter/material.dart';
import 'package:flutter_portugal_home/resources/style/colors.dart';
import 'package:flutter_portugal_home/resources/style/text_styles.dart';

class TopText extends StatelessWidget {
  final String title;
  final String description;
  TopText(this.title, this.description);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          title,
          style: TextStyles.headline6(
            color: FlutterPTColors.blue,
          ),
        ),
        Text(
          description,
          style: TextStyles.bodyText2(
            color: FlutterPTColors.black,
          ),
        ),
      ],
    );
  }
}
