import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portugal_home/provider/about_provider.dart';
import 'package:flutter_portugal_home/provider/jobs_provider.dart';
import 'package:flutter_portugal_home/provider/learn_provider.dart';
import 'package:flutter_portugal_home/provider/projects_provider.dart';
import 'package:flutter_portugal_home/resources/routes.dart';
import 'package:flutter_portugal_home/resources/style/colors.dart';
import 'package:flutter_portugal_home/resources/style/themes.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'screens/home/home_page.dart';
import 'screens/learn/learn_page.dart';
import 'screens/jobs/jobs_page.dart';
import 'screens/projects/projects_page.dart';
import 'screens/about/about_page.dart';

void main() => runApp(FlutterPortugal());

class FlutterPortugal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Portugal',
      theme: Themes.defaultAppTheme(context),
      initialRoute: routeHome,
      onGenerateRoute: (settings) {
        var page;
        switch (settings.name) {
          case routeHome:
            page = HomePage();
            break;
          case routeLearn:
            page = ChangeNotifierProvider<LearnProvider>(
              create: (context) => LearnProvider(),
              child: LearnPage(),
            );
            break;
          case routeJobs:
            page = ChangeNotifierProvider<JobsProvider>(
              create: (context) => JobsProvider(),
              child: JobsPage(),
            );
            break;
          case routeProjects:
            page = ChangeNotifierProvider<ProjectsProvider>(
              create: (context) => ProjectsProvider(),
              child: ProjectsPage(),
            );
            break;
          case routeAbout:
            page = ChangeNotifierProvider<AboutProvider>(
              create: (context) => AboutProvider(),
              child: AboutPage(),
            );
            break;
        }
        return MaterialPageRoute(builder: (_) => page, settings: settings);
      },
      builder: (context, widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget),
        maxWidth: 980,
        minWidth: 450,
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint(breakpoint: 450, name: MOBILE, autoScale: true),
          ResponsiveBreakpoint(breakpoint: 900, name: TABLET, autoScale: true),
          ResponsiveBreakpoint(
              breakpoint: 980, name: DESKTOP, autoScale: false),
        ],
        background: Container(
          color: FlutterPTColors.white,
        ),
      ),
    );
  }
}
