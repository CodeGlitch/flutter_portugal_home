import 'package:flutter/material.dart';
import 'package:flutter_portugal_home/provider/learn_provider.dart';
import 'package:flutter_portugal_home/resources/dimensions.dart';
import 'package:flutter_portugal_home/resources/strings.dart';
import 'package:flutter_portugal_home/ui/screens/widgets/app_bar.dart';
import 'package:flutter_portugal_home/ui/screens/widgets/drawer.dart';
import 'package:flutter_portugal_home/ui/screens/widgets/footer.dart';
import 'package:provider/provider.dart';
//import 'package:responsive_grid/responsive_grid.dart';

import 'components/learn_tile.dart';
import 'components/top_text.dart';

class LearnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final learn = Provider.of<LearnProvider>(context);
    learn.getLearn();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MyAppBar.appBar(context),
      drawer: MyDrawer.drawer(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(bodyPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TopText(learnTitle, learnDescription),
              Wrap(
                /// TODO
                children: [
                  for (int i = 0; i < learn.data.length; i++) ...[
                    LearnTile(
                      learn.data[i].name,
                      learn.data[i].url,
                      learn.data[i].image,
                    ),
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
