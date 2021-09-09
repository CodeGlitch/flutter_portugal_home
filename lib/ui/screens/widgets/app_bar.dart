import 'package:flutter/material.dart';
import 'package:flutter_portugal_home/resources/dimensions.dart';
import 'package:flutter_portugal_home/resources/routes.dart';
import 'package:flutter_portugal_home/resources/style/colors.dart';
import 'flutter_portugal_text.dart';

class MyAppBar {
  static AppBar appBar(context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return AppBar(
      automaticallyImplyLeading: (queryData.size.width >= maxPageBody) ? false : true,
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
          (queryData.size.width >= maxPageBody)
              ? Expanded(child: Container(), flex: 5)
              : Container(),
          menuItem(context, queryData, routeHome, "Home"),
          (queryData.size.width >= maxPageBody) ? SizedBox(width: menuDividerSize) : Container(),
          menuItem(context, queryData, routeLearn, "Learn"),
          (queryData.size.width >= maxPageBody) ? SizedBox(width: menuDividerSize) : Container(),
          menuItem(context, queryData, routeJobs, "Jobs"),
          (queryData.size.width >= maxPageBody) ? SizedBox(width: menuDividerSize) : Container(),
          menuItem(context, queryData, routeProjects, "Projects"),
          (queryData.size.width >= maxPageBody) ? SizedBox(width: menuDividerSize) : Container(),
          menuItem(context, queryData, routeAbout, "About"),
        ],
      ),
    );
  }

  static menuItem(context, queryData, String route, String text) {
    return (queryData.size.width >= maxPageBody)
        ? TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(route);
            },
            child: Text(
              text,
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: FlutterPTColors.blue,
                  ),
            ),
          )
        : Container();
  }
}
