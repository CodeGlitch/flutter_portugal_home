import 'package:flutter/material.dart';
import 'package:flutter_portugal_home/resources/style/colors.dart';

class SeperatorRow extends StatelessWidget {
  const SeperatorRow({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: FlutterPTColors.darkGrey,
      thickness: 1.0,
    );
  }
}

class SeperatorRowEmpty extends StatelessWidget {
  const SeperatorRowEmpty({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Divider(
      color: FlutterPTColors.white,
      thickness: 0.0,
      height: queryData.size.height * 0.05,
    );
  }
}
