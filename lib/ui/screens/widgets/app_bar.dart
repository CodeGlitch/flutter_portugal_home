import 'package:flutter/material.dart';
import 'package:flutter_portugal_home/resources/routes.dart';
import 'package:flutter_portugal_home/resources/style/colors.dart';
import 'flutter_portugal_text.dart';

class MyAppBar {
  static AppBar appBar(context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return AppBar(
      automaticallyImplyLeading: (queryData.size.width >= 980) ? false : true,
      elevation: 0.0,
      iconTheme: Theme.of(context).iconTheme.copyWith(
            color: FlutterPTColors.darkGrey,
          ),
      backgroundColor: FlutterPTColors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          FlutterPortugalText(),
          (queryData.size.width >= 980)
              ? Expanded(child: Container(), flex: 5)
              : Container(),
          menuItem(context, queryData, routeHome, "Home"),
          (queryData.size.width >= 980) ? SizedBox(width: 15) : Container(),
          menuItem(context, queryData, routeLearn, "Learn"),
          (queryData.size.width >= 980) ? SizedBox(width: 15) : Container(),
          menuItem(context, queryData, routeJobs, "Jobs"),
          (queryData.size.width >= 980) ? SizedBox(width: 15) : Container(),
          menuItem(context, queryData, routeProjects, "Projects"),
          (queryData.size.width >= 980) ? SizedBox(width: 15) : Container(),
          menuItem(context, queryData, routeAbout, "About"),
        ],
      ),
    );
  }

  static menuItem(context, queryData, String route, String text) {
    return (queryData.size.width >= 980)
        ? FlatButton(
            onPressed: () {
              Navigator.of(context).pushNamed(route);
            },
            child: Text(
              text,
              style: Theme.of(context).textTheme.headline6.copyWith(
                    color: FlutterPTColors.blue,
                  ),
            ),
          )
        : Container();
  }
}
