import 'package:flutter/material.dart';
import 'package:flutter_portugal_home/resources/dimensions.dart';
import 'package:flutter_portugal_home/resources/routes.dart';
import 'package:flutter_portugal_home/resources/strings.dart';
import 'package:flutter_portugal_home/resources/style/colors.dart';
import 'package:flutter_portugal_home/utils/launch_url.dart';

class Footer {
  static List<Widget> footer(context) {
    return <Widget>[
      SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(routeAbout);
              },
              child: Text(
                "About",
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: FlutterPTColors.blue,
                    ),
              ),
            ),
            SizedBox(width: footerDividerSize),
            Text(
              flutterPTtext,
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: FlutterPTColors.blue,
                  ),
            ),
            SizedBox(width: footerDividerSize),
            TextButton(
              onPressed: () {
                launchURL(footerBlog);
              },
              child: Text(
                "Blog",
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: FlutterPTColors.blue,
                    ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Row(
          /// TODO:
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              footerPrivacy,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    color: FlutterPTColors.blue,
                  ),
            ),
          ],
        ),
      ),
    ];
  }
}
