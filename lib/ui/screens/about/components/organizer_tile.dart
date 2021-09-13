import 'package:flutter/material.dart';
import 'package:flutter_portugal_home/resources/dimensions.dart';
import 'package:flutter_portugal_home/resources/style/colors.dart';
import 'package:flutter_portugal_home/utils/launch_url.dart';

class OrganizerTile extends StatelessWidget {
  final String? name;
  final String? description;
  final String? image;
  final String? github;
  final String? twitter;
  final String? linkedin;
  const OrganizerTile(this.name, this.description, this.image, this.github,
      this.twitter, this.linkedin,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: organizerTileWidth,
      margin: const EdgeInsets.all(containerPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.network(
            image!,
            height: organizerImgHeight,
            width: organizerImgWidth,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(textLeftPadding, 0, 0, 0),
            child: Text(
              name!,
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: FlutterPTColors.blue,
                  ),
            ),
          ),
          Wrap(
            children: [
              github != null
                  ? TextButton(
                      onPressed: () {
                        launchURL(github!);
                      },
                      child: Text(
                        "Social",
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              color: FlutterPTColors.blue,
                            ),
                        textAlign: TextAlign.start,
                      ),
                    )
                  : Container(),
              twitter != null
                  ? TextButton(
                      onPressed: () {
                        launchURL(twitter!);
                      },
                      child: Text(
                        "Social",
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              color: FlutterPTColors.blue,
                            ),
                      ),
                    )
                  : Container(),
              linkedin != null
                  ? TextButton(
                      onPressed: () {
                        launchURL(linkedin!);
                      },
                      child: Text(
                        "Social",
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              color: FlutterPTColors.blue,
                            ),
                      ),
                    )
                  : Container(),
            ],
          ),
          Text(
            description!,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: FlutterPTColors.black,
                ),
          ),
        ],
      ),
    );
  }
}
