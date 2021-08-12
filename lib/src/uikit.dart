import 'package:dash_kit_uikit/src/modals/uikit_component_group.dart';

typedef RegisterUiComponentsCallback = List<UiComponentGroup> Function();

abstract class UiKit {
  static late RegisterUiComponentsCallback _registrationCallback;

  static List<UiComponentGroup>? get uiComponentsGroups =>
      _registrationCallback();

  static void register(RegisterUiComponentsCallback registrationCallback) {
    _registrationCallback = registrationCallback;
  }
}
