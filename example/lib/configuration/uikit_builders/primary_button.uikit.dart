import 'package:dash_kit_uikit/dash_kit_uikit.dart';
import 'package:example/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class PrimaryButtonUiKitBuilder extends UiKitBuilder {
  @override
  Type get componentType => PrimaryButton;

  @override
  void buildComponentStates() {
    build(
      'Enabled Primary Button',
      Center(
        child: PrimaryButton(
          text: 'Enabled Primary Button',
          onPressed: () {},
          expanded: false,
        ),
      ),
    );
    build(
      'Disabled Primary Button',
      const PrimaryButton(text: 'Disabled Primary Button'),
    );
    build(
      'Expanded Primary Button',
      PrimaryButton(
        text: 'Enabled Primary Button',
        onPressed: () {},
        expanded: true,
      ),
    );
  }
}
