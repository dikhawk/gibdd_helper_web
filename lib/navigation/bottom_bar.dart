import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gibdd_templates_web/themes/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Row(
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              child: Container(
                width: 120,
                height: 45,
                child: Image.network("assets/images/google_play_badge.png"),
              ),
              onTap: () async {
                String url =
                    'https://play.google.com/store/apps/details?id=com.dik.gibddhelper';
                if (await canLaunch(url)) {
                  await launch(url);
                }
                // html.window.open(
                //     'https://play.google.com/store/apps/details?id=com.dik.gibddhelper',
                //     "Url playstore");
              },
            ),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              child: Container(
                width: 25,
                height: 25,
                child: Image.network("assets/images/icon_telegram.svg"),
              ),
              onTap: () async {
                String url = 'https://t.me/gibdd_helper';
                if (await canLaunch(url)) {
                  await launch(url);
                }
              },
            ),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              child: Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      child: Image.network("assets/images/icon_email.svg"),
                    ),
                    Text(
                      " gibddhelper@yahoo.com",
                      style: standardTextLittleBoldStyle,
                    ),
                  ],
                ),
              ),
              onTap: () async {
                Uri uri = Uri(scheme: 'mailto', path: 'gibddhelper@yahoo.com');
                if (await canLaunch(uri.toString())) {
                  await launch(uri.toString());
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
