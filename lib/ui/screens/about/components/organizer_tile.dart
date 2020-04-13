import 'package:flutter/material.dart';
import 'package:flutter_portugal_home/resources/dimensions.dart';
import 'package:flutter_portugal_home/resources/style/colors.dart';
import 'package:flutter_portugal_home/utils/launch_url.dart';
import 'package:responsive_grid/responsive_grid.dart';

class OrganizerTile {
  static ResponsiveGridCol tile(context, String name, String description,
      String image, String social1, String social2, String social3) {
    return ResponsiveGridCol(
      xs: 12,
      md: 3,
      child: Container(
        /*decoration: BoxDecoration(
          color: FlutterPTColors.grey,
        ),*/
        margin: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              ///TODO:
              "assets/background.jpg",
              height: organizerImgHeight,
              width: organizerImgWidth,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
              child: Text(
                name,
                style: Theme.of(context).textTheme.headline6.copyWith(
                      color: FlutterPTColors.blue,
                    ),
              ),
            ),
            Text(
              description,
              style: Theme.of(context).textTheme.bodyText2.copyWith(
                    color: FlutterPTColors.black,
                  ),
            ),
            Row(
              children: <Widget>[
                social1 != null
                    ? FlatButton(
                        onPressed: () {
                          launchURL(social1);
                        },
                        child: Text(
                          "Social",
                          style: Theme.of(context).textTheme.bodyText2.copyWith(
                                color: FlutterPTColors.blue,
                              ),
                          textAlign: TextAlign.start,
                        ),
                      )
                    : Container(),
                social2 != null
                    ? FlatButton(
                        onPressed: () {
                          launchURL(social2);
                        },
                        child: Text(
                          "Social",
                          textAlign: TextAlign.start,
                          style: Theme.of(context).textTheme.bodyText2.copyWith(
                                color: FlutterPTColors.blue,
                              ),
                        ),
                      )
                    : Container(),
                social3 != null
                    ? FlatButton(
                        onPressed: () {
                          launchURL(social3);
                        },
                        child: Text(
                          "Social",
                          textAlign: TextAlign.start,
                          style: Theme.of(context).textTheme.bodyText2.copyWith(
                                color: FlutterPTColors.blue,
                              ),
                        ),
                      )
                    : Container(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
