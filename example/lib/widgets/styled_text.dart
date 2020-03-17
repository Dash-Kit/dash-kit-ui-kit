import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

class TextUiKitBuilder extends UiKitBuilder {
  @override
  String get componentGroup => 'Texts';
  @override
  Type get componentType => Text;
  @override
  void buildComponentStates() {
    build('Simple text', const Text('Hello world!'));
  }
}
