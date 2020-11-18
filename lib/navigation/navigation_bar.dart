import 'package:flutter/material.dart';
import 'package:gibdd_templates_web/themes/styles.dart';

import 'navigation_bar_item.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _DesktopNavigationBar();
  }
}

class _DesktopNavigationBar extends StatelessWidget {
  const _DesktopNavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                child: Image.network("assets/images/logo.svg"),
              ),
              Text(
                "Помощник ГИБДД",
                style: navigationTextBarHeaderStyle,
              )
            ],
          ),
          Row(
            children: [
              NavigationBarItem("О приложениии", () {
                showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                          title: Text("Test click home"),
                          content: Text("Home"),
                          actions: [
                            TextButton(
                              child: Text("Ok"),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            )
                          ],
                        ));
              }),
              NavigationBarItem("Список шаблонов", () {
                showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                          title: Text("Test click"),
                          content: Text("Message"),
                          actions: [
                            TextButton(
                              child: Text("Ok"),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            )
                          ],
                        ));
              }),
              NavigationBarItem("Генератор шаблонов", () {
                showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                          title: Text("Test click"),
                          content: Text("Message"),
                          actions: [
                            TextButton(
                              child: Text("Ok"),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            )
                          ],
                        ));
              }),
              NavigationBarItem("Политика конфиденциальности", () {}),
            ],
          )
        ],
      ),
    );
  }
}
