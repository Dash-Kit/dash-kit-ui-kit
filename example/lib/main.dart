import 'package:dash_kit_uikit/dash_kit_uikit.dart';
import 'package:example/configuration/uikit.dart';
import 'package:flutter/material.dart';

void main() {
  registerUiKitWidgetGroups();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UIKit Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: UiKitPage(componentWithPadding: true),
    );
  }
}
