import 'package:flutter/material.dart';
import 'package:flutter_portugal_home/resources/style/colors.dart';
import 'package:flutter_portugal_home/resources/style/text_styles.dart';

class FlutterText extends StatelessWidget {
  const FlutterText({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Flutter",
          style: TextStyles.headline1(
            color: FlutterPTColors.grey,
          ),
        ),
      ],
    );
  }
}
