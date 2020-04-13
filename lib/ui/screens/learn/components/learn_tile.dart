import 'package:flutter/material.dart';
import 'package:flutter_portugal_home/resources/dimensions.dart';
import 'package:flutter_portugal_home/resources/style/colors.dart';
import 'package:flutter_portugal_home/utils/launch_url.dart';
import 'package:responsive_grid/responsive_grid.dart';

class LearnTile {
  static ResponsiveGridCol tile(
      context, String name, String url, String image) {
    return ResponsiveGridCol(
      xs: 12,
      md: 4,
      child: Container(
        /*decoration: BoxDecoration(
          color: FlutterPTColors.grey,
        ),*/
        margin: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              ///TODO:
              "assets/background.jpg",
              height: learnImgHeight,
              width: learnImgWidth,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
              child: Text(
                name,
                style: Theme.of(context).textTheme.headline6.copyWith(
                      color: FlutterPTColors.black,
                    ),
              ),
            ),
            FlatButton(
              onPressed: () {
                launchURL(url);
              },
              child: Text(
                "Website >",
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: FlutterPTColors.blue,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
