import 'package:flutter/material.dart';
import 'package:flutter_portugal_home/resources/style/colors.dart';
import 'package:flutter_portugal_home/resources/style/text_styles.dart';
import 'package:flutter_portugal_home/utils/launch_url.dart';

class TopText extends StatelessWidget {
  final String title;
  final String description;
  final String url;
  TopText(this.title, this.description, this.url);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
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
        ElevatedButton(
          onPressed: () {
            launchURL(url);
          },
          child: Text(
            "GITHUB",
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: FlutterPTColors.blue,
                ),
          ),
        ),
      ],
    );
  }
}
