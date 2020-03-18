import 'package:example/widgets/styled_text.dart';
import 'package:uikit/uikit.dart';

void registerWidgetGroups() {
  UiKit.register(() => [
        UiComponentGroup('Text widgets', [
          TextUiKitBuilder(),
        ]),
        UiComponentGroup('Text widgets', [
          TextUiKitBuilder(),
        ]),
      ]);
}
