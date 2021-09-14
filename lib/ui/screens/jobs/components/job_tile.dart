import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_portugal_home/resources/dimensions.dart';
import 'package:flutter_portugal_home/resources/style/colors.dart';
import 'package:flutter_portugal_home/utils/launch_url.dart';
import 'package:html/dom.dart' as dom;

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
    return Container(
      child: ExpansionTile(
        backgroundColor: Colors.white,
        title: Column(
          children: [
            Row(
              children: <Widget>[
                Wrap(
                  children: [
                    Image.network(
                      image!,
                      height: jobImgHeight,
                      width: jobImgWidth,
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(jobsTextPadding),
                    child: Wrap(
                      children: [
                        Text(
                          name!,
                          style:
                              Theme.of(context).textTheme.headline5!.copyWith(
                                    color: FlutterPTColors.black,
                                  ),
                        ),
                        Text(
                          description!,
                          style:
                              Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: FlutterPTColors.black,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
          Html(
              data: htmlBody,
              onLinkTap: (String? url, RenderContext context,
                  Map<String, String> attributes, dom.Element? element) {
                launchURL(url!);
              }),
        ],
      ),
    );
  }
}
