import 'package:flutter/material.dart';
import 'package:flutter_portugal_home/resources/style/colors.dart';
import 'package:flutter_portugal_home/resources/style/text_styles.dart';
import 'package:flutter_portugal_home/utils/launch_url.dart';

class ProjectTile extends StatelessWidget {
  final int index;
  final String name;
  final String description;
  final String url;
  final String image;

  const ProjectTile(
      this.index, this.name, this.description, this.url, this.image);

  @override
  Widget build(BuildContext context) {
    if (index.isEven) {
      return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          projectImage(),
          projectText(context),
        ],
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        projectText(context),
        projectImage(),
      ],
    );
  }

  projectImage() {
    return Column(
      children: <Widget>[
        Center(
          child: Image.asset(
            "assets/background.jpg",

            /// TODO: use target from url?
            height: 150,
          ),
        ),
      ],
    );
  }

  projectText(context) {
    return Column(
      children: <Widget>[
        Text(
          name,
          style: TextStyles.bodyText1(
            color: FlutterPTColors.blue,
          ),
        ),
        Text(
          description,
          style: TextStyles.bodyText2(
            color: FlutterPTColors.black,
          ),
        ),
        RaisedButton(
          onPressed: () {
            launchURL(url);
          },
          child: Text(
            "GITHUB",
            style: Theme.of(context).textTheme.headline6.copyWith(
                  color: FlutterPTColors.blue,
                ),
          ),
        ),
      ],
    );
  }
}
