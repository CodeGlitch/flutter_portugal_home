import 'package:flutter/material.dart';
import 'package:flutter_portugal_home/resources/strings.dart';
import 'package:flutter_portugal_home/resources/style/colors.dart';
import 'package:flutter_portugal_home/utils/launch_url.dart';

class JobOfferContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          jobsContactus,
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                color: FlutterPTColors.black,
              ),
        ),
        TextButton(
          onPressed: () {
            launchURL("mailto:" + jobsContactusEmail);
          },
          child: Text(
            jobsContactusEmail,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: FlutterPTColors.blue,
                ),
          ),
        )
      ],
    );
  }
}
