import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_portugal_home/resources/dimensions.dart';
import 'package:flutter_portugal_home/resources/style/colors.dart';
import 'package:flutter_portugal_home/utils/launch_url.dart';

class JobTile extends StatelessWidget {
  final String? description;
  final String? htmlBody;
  final String? image;
  final String? lastUpdate;
  final String? name;
  final String? url;

  JobTile(this.name, this.description, this.image, this.htmlBody,
      this.lastUpdate, this.url);

  @override
  Widget build(BuildContext context) {
    ///TODO:
    return Container(
      /*decoration: BoxDecoration(
        border: Border.all(
          color: Colors.transparent,
        ),*/
      //borderRadius: BorderRadius.circular(0.0),
      //),
      child: ExpansionTile(
        backgroundColor: Colors.white,
        title: Row(
          children: <Widget>[
            Image.network(
              image!,
              height: jobImgHeight,
              width: jobImgWidth,
            ),
            Column(
              children: <Widget>[
                Text(
                  name!,
                ),
                Text(
                  description!,
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      lastUpdate.toString(),
                    ),
                    TextButton(
                      onPressed: () {
                        launchURL(url!);
                      },
                      child: Text(
                        "APPLY",
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              color: FlutterPTColors.blue,
                            ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
        children: <Widget>[
          /// TODO needs work after update
          Html(
            //useRichText: true,
            data: htmlBody,
            //defaultTextStyle: Theme.of(context).textTheme.bodyText2,
            //onLinkTap: launchURL,
            /*linkStyle: Theme.of(context)
                .textTheme
                .bodyText2
                .copyWith(color: FlutterPTColors.blue),*/
          ),
        ],
      ),
    );
  }
}
