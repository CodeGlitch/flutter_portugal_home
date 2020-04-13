import 'package:flutter/material.dart';
import 'package:flutter_portugal_home/provider/about_provider.dart';
import 'package:flutter_portugal_home/resources/strings.dart';
import 'package:flutter_portugal_home/ui/screens/widgets/app_bar.dart';
import 'package:flutter_portugal_home/ui/screens/widgets/drawer.dart';
import 'package:flutter_portugal_home/ui/screens/widgets/footer.dart';
import 'package:provider/provider.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'components/organizer_tile.dart';
import 'components/top_text.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final about = Provider.of<AboutProvider>(context);
    about.getOrganizer();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MyAppBar.appBar(context),
      drawer: MyDrawer.drawer(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TopText(aboutTitle, aboutDescription),
              ResponsiveGridRow(
                /// TODO
                children: [
                  for (int i = 0; i < about.data.length; i++) ...[
                    OrganizerTile.tile(
                      context,
                      about.data[i]['name'],
                      about.data[i]['description'],
                      about.data[i]['image'],
                      about.data[i]['social1'],
                      about.data[i]['social2'],
                      about.data[i]['social3'],
                    ),
                    /*ResponsiveGridCol(
                      xs: 12,
                      md: 3,
                      child: Container(
                        height: 100,
                        width: 100,
                        alignment: Alignment(0, 0),
                        color: FlutterPTColors.blue,
                        child: Text(about.data[i]['name']),
                      ),
                    ),*/
                  ],
                ],
              ),
            ],
          ),
        ),
      ),
      persistentFooterButtons: Footer.footer(context),
    );
  }
}
