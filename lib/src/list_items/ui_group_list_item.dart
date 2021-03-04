import 'package:flutter/material.dart';
import 'package:dash_kit_uikit/src/uikit_builder.dart';
import 'package:dash_kit_uikit/src/modals/uikit_component_group.dart';

class UIGroupListItem extends StatelessWidget {
  const UIGroupListItem({
    required this.group,
    required this.onPressed,
  });

  final Function(UiKitBuilder, BuildContext) onPressed;

  final UiComponentGroup group;

  @override
  Widget build(BuildContext context) {
    return _buildTiles(group, context);
  }

  Widget _buildTiles(UiComponentGroup group, BuildContext context) {
    return Card(
      elevation: 5,
      child: ExpansionTile(
        key: PageStorageKey<UiComponentGroup>(group),
        title: Text(group.name),
        children: group.builders
            .map((item) => _buildUIBuilder(item, context))
            .toList(),
      ),
    );
  }

  Widget _buildUIBuilder(UiKitBuilder builder, BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        elevation: 0,
        color: Colors.white,
        padding: EdgeInsets.all(4),
        child: Text(
          builder.componentType.toString(),
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
        ),
        onPressed: () => onPressed(builder, context),
      ),
    );
  }
}
