import 'package:flutter/material.dart';
import 'package:uikit/src/uikit_builder.dart';
import 'package:uikit/src/modals/uikit_component_group.dart';
import 'package:uikit/src/widget_states_modal.dart';

class UIGroupListItem extends StatelessWidget {
  const UIGroupListItem(this.data);

  final UiComponentGroup data;

  @override
  Widget build(BuildContext context) {
    return _buildTiles(data, context);
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
          builder.componentGroup,
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
        ),
        onPressed: () => _showWidgetStates(builder, context),
      ),
    );
  }

  void _showWidgetStates(UiKitBuilder builder, BuildContext context) {
    Navigator.of(context).push(WidgetStatesModal(builder));
  }
}
