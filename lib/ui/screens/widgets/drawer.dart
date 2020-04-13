import 'package:flutter/material.dart';
import 'package:flutter_portugal_home/resources/routes.dart';
import 'package:flutter_portugal_home/resources/style/colors.dart';

class MyDrawer {
  static Widget drawer(context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Image.asset(
              "assets/flutter_portugal_icon.jpg",
              height: 35.0,
            ),
            decoration: BoxDecoration(
              color: FlutterPTColors.white,
            ),
          ),
          menuItem(context, routeHome, "Home"),
          menuDivider(),
          menuItem(context, routeLearn, "Learn"),
          menuDivider(),
          menuItem(context, routeJobs, "Jobs"),
          menuDivider(),
          menuItem(context, routeProjects, "Projects"),
          menuDivider(),
          menuItem(context, routeAbout, "About"),
        ],
      ),
    );
  }

  static menuItem(context, String route, String text) {
    return ListTile(
      title: Text(text),
      onTap: () {
        Navigator.of(context).pushNamed(route);
      },
    );
  }

  static menuDivider() {
    return Divider(
      color: Colors.grey,
      height: 5.0,
      thickness: 1.0,
    );
  }
}
