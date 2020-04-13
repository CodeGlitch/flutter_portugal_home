import 'package:flutter/material.dart';
import 'package:flutter_portugal_home/resources/strings.dart';
import 'package:flutter_portugal_home/resources/style/colors.dart';

class FlutterPortugalText extends StatelessWidget {
  const FlutterPortugalText({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      flutterPTtext,
      style: Theme.of(context).textTheme.headline6.copyWith(
            color: FlutterPTColors.blue,
          ),
    );
  }
}
