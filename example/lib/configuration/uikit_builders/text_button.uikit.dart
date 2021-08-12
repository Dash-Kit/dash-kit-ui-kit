import 'package:dash_kit_uikit/dash_kit_uikit.dart';
import 'package:flutter/material.dart';

class FlatButtonUiKitBuilder extends UiKitBuilder {
  @override
  Type get componentType => TextButton;

  @override
  void buildComponentStates() {
    build(
      'Grey button',
      TextButton(
        onPressed: null,
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(8.0),
          backgroundColor: Colors.grey,
        ),
        child: Text(
          'Grey button',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
      ),
    );
    build(
      'Blue button',
      TextButton(
        onPressed: null,
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(8.0),
          backgroundColor: Colors.blue,
        ),
        child: Text(
          'Blue button',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
