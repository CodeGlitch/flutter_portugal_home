import 'package:flutter/material.dart';
import 'package:flutter_portugal_home/resources/dimensions.dart';
import 'package:flutter_portugal_home/resources/style/colors.dart';
import 'package:flutter_portugal_home/utils/launch_url.dart';

class LearnTile extends StatelessWidget {
  final String? name;
  final String? url;
  final String? image;
  const LearnTile(this.name, this.url, this.image, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: learnTileWidth,
      margin: const EdgeInsets.all(containerPadding),
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
            padding: const EdgeInsets.fromLTRB(textLeftPadding, 0, 0, 0),
            child: Text(
              name!,
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: FlutterPTColors.black,
                  ),
            ),
          ),
          TextButton(
            onPressed: () {
              launchURL(url!);
            },
            child: Text(
              "Website >",
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    color: FlutterPTColors.blue,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
