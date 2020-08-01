import 'package:flutter/material.dart';

class ElyxAppBar extends AppBar {
  ElyxAppBar({Key key, Widget title})
      : super(key: key, title: title, actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.ac_unit),
            onPressed: () => print('text'),
          ),
        ]);
}
