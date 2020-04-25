import 'package:flutter/material.dart';
import 'package:flutter_portugal_home/resources/dimensions.dart';
import 'package:flutter_portugal_home/ui/screens/widgets/app_bar.dart';
import 'package:flutter_portugal_home/ui/screens/widgets/drawer.dart';
import 'package:flutter_portugal_home/ui/screens/widgets/footer.dart';
import 'package:flutter_portugal_home/ui/screens/widgets/seperator.dart';
import 'components/BGImage.dart';
import 'components/flutter_text.dart';
import 'components/join_text.dart';
import 'components/portugal_text.dart';
import 'components/social_media.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MyAppBar.appBar(context),
      drawer: MyDrawer.drawer(context),
      body: ListView(
        shrinkWrap: false,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(bodyPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SeperatorRowEmpty(),
                BGImage(),
                SeperatorRowEmpty(),
                FlutterText(),
                PortugalText(),
                SeperatorRowEmpty(),
                JoinText(),
                SeperatorRowEmpty(),
                SocialMedia(),
              ],
            ),
          ),
        ],
      ),
      persistentFooterButtons: Footer.footer(context),
    );
  }
}
