import 'package:flutter/material.dart';

class MainContainer extends StatelessWidget {
  final Widget contentWiget;

  MainContainer({this.contentWiget});

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double leftRightMargin = (widthScreen / 100) * 15;
    if (widthScreen <= 800) {
      leftRightMargin = (widthScreen / 100) * 5;
    }

    return Card(
      elevation: 8,
      margin: EdgeInsets.only(
          left: leftRightMargin, right: leftRightMargin, top: 10, bottom: 50),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        padding: EdgeInsets.all(50),
        child: contentWiget,
      ),
    );
  }
}
