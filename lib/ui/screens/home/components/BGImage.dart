import 'package:flutter/material.dart';
import 'package:flutter_portugal_home/resources/dimensions.dart';

class BGImage extends StatelessWidget {
  const BGImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Center(
            child: Image.asset(
              "assets/background.jpg",
              height: queryData.size.width * bgImgPercSize,
            ),
          ),
        ),
      ],
    );
    //}
  }
}
