import 'package:flutter/material.dart';
import 'package:gibdd_templates_web/navigation/bottom_bar.dart';
import 'package:gibdd_templates_web/navigation/navigation_bar.dart';
import 'package:gibdd_templates_web/screens/main/main_page_body.dart';
import 'package:gibdd_templates_web/screens/main_container.dart';
import 'package:gibdd_templates_web/themes/decorations.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: LayoutBuilder(
          builder: (context, constraint) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraint.maxHeight),
                child: IntrinsicHeight(
                  child: Column(
                    children: [
                      NavigationBar(),
                      Expanded(
                        child: MainContainer(
                          contentWiget: MainPageBody(),
                        ),
                      ),
                      BottomBar()
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        decoration: defaultBoxDecoration,
      ),
    );
  }
}
