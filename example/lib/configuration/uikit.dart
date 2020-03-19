import 'package:example/widgets/flat_button.uikit.dart';
import 'package:example/widgets/text.uikit.dart';
import 'package:uikit/uikit.dart';

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
