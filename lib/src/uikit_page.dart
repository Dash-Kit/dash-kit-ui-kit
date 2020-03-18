import 'package:flutter/material.dart';
import 'package:uikit/src/list_items/ui_group_list_item.dart';
import 'package:uikit/src/uikit.dart';
import 'package:uikit/src/modals/uikit_component_group.dart';

class UiKitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<UiComponentGroup> groups = UiKit.uiComponentsGroups;
    return Scaffold(
      appBar: AppBar(
        title: Text('UIKit'),
      ),
      body: ListView(
        children: <Widget>[
          ...groups.map((item) => UIGroupListItem(item)),
        ],
      ),
    );
  }
}
