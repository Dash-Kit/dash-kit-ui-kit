import 'package:uikit/src/uikit_builder.dart';
import 'package:uikit/src/uikit_component_group.dart';

typedef RegisterUiComponentsCallback = List<UiKitBuilder> Function();

abstract class UiKit {
  static RegisterUiComponentsCallback _registrationCallback;
  static List<UiComponentGroup> get uiComponentsGroups {
    final builders = _registrationCallback() ?? [];
    // Group here builders by component group field in the builders
    return [];
  }

  static void register(RegisterUiComponentsCallback registrationCallback) {
    _registrationCallback = registrationCallback;
  }
}
