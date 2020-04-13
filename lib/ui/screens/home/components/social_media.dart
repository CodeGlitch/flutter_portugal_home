import 'package:flutter/material.dart';
import 'discord.dart';
import 'meetup.dart';
import 'twitter.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    if (queryData.size.width >= 980) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Discord(),
          Twitter(),
          Meetup(),
        ],
      );
    } else {
      return Column(
        children: <Widget>[
          Discord(),
          SizedBox(height: queryData.size.height * 0.05),
          Twitter(),
          SizedBox(height: queryData.size.height * 0.05),
          Meetup(),
          SizedBox(height: queryData.size.height * 0.05),
        ],
      );
    }
  }
}
