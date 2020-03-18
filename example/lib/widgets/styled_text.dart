import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

class TextUiKitBuilder extends UiKitBuilder {
  @override
  String get componentGroup => 'Styled Texts';
  @override
  Type get componentType => Text;

  @override
  void buildComponentStates() {
    build('Black text', const Text('Hello world!'));
    build(
      'Grey text',
      const Text(
        'Hello world!',
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}
