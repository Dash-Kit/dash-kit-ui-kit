import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

class FlatButtonUiKitBuilder extends UiKitBuilder {
  @override
  Type get componentType => FlatButton;

  @override
  void buildComponentStates() {
    build(
      'White button',
      const FlatButton(
        onPressed: null,
        child: Text(
          "Flat Button",
        ),
      ),
    );
    build(
      'Blue button',
      const FlatButton(
        color: Colors.blue,
        textColor: Colors.white,
        padding: EdgeInsets.all(8.0),
        splashColor: Colors.blueAccent,
        onPressed: null,
        child: Text(
          "Flat Button",
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
