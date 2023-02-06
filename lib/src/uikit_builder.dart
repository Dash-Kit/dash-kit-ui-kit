import 'package:dash_kit_uikit/dash_kit_uikit.dart';
import 'package:dash_kit_uikit/src/modals/component_state.dart';
import 'package:flutter/material.dart';

/// [UiKitBuilder] class - abstract class for creating classes
/// that will be joined in [UiComponentGroup] instance.
/// - [componentType] getter should return the type of presented Widget
/// - [build] method should return an example Widget.
abstract class UiKitBuilder {
  List<ComponentState> _componentStates = [];

  Type get componentType;

  void buildComponentStates();

  List<ComponentState> getComponentsStates() {
    _componentStates = [];
    buildComponentStates();

    return _componentStates;
  }

  void build(String name, Widget widget) {
    _componentStates.add(ComponentState(name, widget));
  }
}
