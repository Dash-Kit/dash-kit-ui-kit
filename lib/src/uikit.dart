import 'package:dash_kit_uikit/src/modals/uikit_component_group.dart';

typedef RegisterUiComponentsCallback = List<UiComponentGroup> Function();

// ignore: avoid_classes_with_only_static_members
abstract class UiKit {
  static late RegisterUiComponentsCallback _registrationCallback;

  static List<UiComponentGroup>? get uiComponentsGroups =>
      _registrationCallback();

  /// Registration group of elements.
  ///
  /// Callback should return the list of [UiComponentGroup] instances.
  //ignore: use_setters_to_change_properties
  static void register(RegisterUiComponentsCallback registrationCallback) {
    _registrationCallback = registrationCallback;
  }
}
