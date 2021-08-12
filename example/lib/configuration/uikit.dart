import 'package:dash_kit_uikit/dash_kit_uikit.dart';
import 'package:example/configuration/uikit_builders/primary_button.uikit.dart';
import 'package:example/configuration/uikit_builders/text.uikit.dart';
import 'package:example/configuration/uikit_builders/text_button.uikit.dart';

void registerUiKitWidgetGroups() {
  UiKit.register(
    () => [
      UiComponentGroup('Text widgets', [
        TextUiKitBuilder(),
      ]),
      UiComponentGroup('Button widgets', [
        PrimaryButtonUiKitBuilder(),
        FlatButtonUiKitBuilder(),
      ]),
    ],
  );
}
