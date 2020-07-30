import 'package:example/widgets/flat_button.uikit.dart';
import 'package:example/widgets/text.uikit.dart';
import 'package:dash_kit_uikit/dash_kit_uikit.dart';

void configureUiKit() {
  UiKit.register(
    () => [
      UiComponentGroup('Text widgets', [
        TextUiKitBuilder(),
      ]),
      UiComponentGroup('Button widgets', [
        FlatButtonUiKitBuilder(),
      ]),
    ],
  );
}
