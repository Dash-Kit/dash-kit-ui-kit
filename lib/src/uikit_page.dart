import 'package:dash_kit_uikit/src/list_items/ui_group_list_item.dart';
import 'package:dash_kit_uikit/src/uikit.dart';
import 'package:dash_kit_uikit/src/uikit_builder.dart';
import 'package:dash_kit_uikit/src/widget_states_modal.dart';
import 'package:flutter/material.dart';

class UiKitPage extends StatelessWidget {
  const UiKitPage({this.componentWithPadding = false});

  final bool componentWithPadding;

  @override
  Widget build(BuildContext context) {
    final componentGroups = UiKit.uiComponentsGroups ?? [];
    return Scaffold(
      appBar: AppBar(
        title: Text('UIKit'),
      ),
      body: ListView(
        children: <Widget>[
          ...componentGroups.map(
            (groupItem) => UIGroupListItem(
              group: groupItem,
              onPressed: _showWidgetStates,
            ),
          ),
        ],
      ),
    );
  }

  void _showWidgetStates(UiKitBuilder builder, BuildContext context) {
    Navigator.of(context).push(
      WidgetStatesModal(
        builder,
        componentWithPadding: componentWithPadding,
      ),
    );
  }
}
