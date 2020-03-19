import 'package:flutter/material.dart';
import 'package:uikit/src/list_items/ui_group_list_item.dart';
import 'package:uikit/src/uikit.dart';
import 'package:uikit/src/modals/uikit_component_group.dart';
import 'package:uikit/src/uikit_builder.dart';
import 'package:uikit/src/widget_states_modal.dart';

class UiKitPage extends StatelessWidget {
  const UiKitPage({this.componentWithPadding = false});

  final bool componentWithPadding;
  @override
  Widget build(BuildContext context) {
    final List<UiComponentGroup> groups = UiKit.uiComponentsGroups;
    return Scaffold(
      appBar: AppBar(
        title: Text('UIKit'),
      ),
      body: ListView(
        children: <Widget>[
          ...groups.map(
            (item) => UIGroupListItem(
              group: item,
              onPressed: _showWidgetStates,
            ),
          ),
        ],
      ),
    );
  }

  void _showWidgetStates(UiKitBuilder builder, BuildContext context) {
    Navigator.of(context).push(WidgetStatesModal(
      builder,
      componentWithPadding: componentWithPadding,
    ));
  }
}
