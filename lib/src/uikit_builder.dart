import 'package:flutter/material.dart';
import 'package:dash_kit_uikit/src/modals/component_state.dart';

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
