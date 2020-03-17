import 'package:flutter/material.dart';

class ComponentState {
  const ComponentState(this.name, this.widget);
  final String name;
  final Widget widget;
}

abstract class UiKitBuilder {
  List<ComponentState> _componentStates = [];
  String get componentGroup;
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
