import 'package:flutter/material.dart';
import 'package:flutter_portugal_home/resources/dimensions.dart';
import 'package:flutter_portugal_home/resources/style/colors.dart';
import 'package:flutter_portugal_home/utils/launch_url.dart';

class OrganizerTile extends StatelessWidget {
  final String? name;
  final String? description;
  final String? image;
  final String? social1;
  final String? social2;
  final String? social3;
  const OrganizerTile(this.name, this.description, this.image, this.social1,
      this.social2, this.social3,
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
          Image.asset(
            ///TODO:
            "assets/background.jpg",
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
          Text(
            description!,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: FlutterPTColors.black,
                ),
          ),
          Wrap(
            children: [
              social1 != null
                  ? TextButton(
                      onPressed: () {
                        launchURL(social1!);
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
              social2 != null
                  ? TextButton(
                      onPressed: () {
                        launchURL(social2!);
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
              social3 != null
                  ? TextButton(
                      onPressed: () {
                        launchURL(social3!);
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
        ],
      ),
    );
  }
}
