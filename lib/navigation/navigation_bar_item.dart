import 'package:flutter/material.dart';
import 'package:gibdd_templates_web/themes/styles.dart';

class NavigationBarItem extends StatefulWidget {
  final String _title;
  final OnClickListener _onClickListener;

  NavigationBarItem(this._title, this._onClickListener);

  @override
  _NavigationBarItemState createState() =>
      _NavigationBarItemState(_title, _onClickListener);
}

class _NavigationBarItemState extends State<NavigationBarItem> {
  final String _title;
  final OnClickListener _onClickListener;
  TextStyle _itemTextStyle;

  _NavigationBarItemState(this._title, this._onClickListener);

  @override
  void initState() {
    _itemTextStyle = navigationTextBarStyle;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        child: Row(
          children: [
            MouseRegion(
              onEnter: (event) {
                setState(() {
                  _itemTextStyle = navigationTextBarFocusedStyle;
                });
              },
              onExit: (event) {
                setState(() {
                  _itemTextStyle = navigationTextBarStyle;
                });
              },
              child: GestureDetector(
                onTap: () {
                  _onClickListener();
                },
                child: Text(
                  _title,
                  style: _itemTextStyle,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

typedef void OnClickListener();
