import 'package:flutter/material.dart';
import 'package:dash_kit_uikit/src/modals/component_state.dart';

class WidgetStateListItem extends StatelessWidget {
  const WidgetStateListItem(
    this.widgetState, {
    this.componentWithPadding = false,
  });

  final ComponentState widgetState;
  final bool componentWithPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          _buildTitle(),
          Container(height: 10),
          Container(
            padding: componentWithPadding
                ? const EdgeInsets.all(16)
                : const EdgeInsets.all(0),
            width: double.infinity,
            child: widgetState.widget,
          ),
          Container(height: 10),
          _buildDivider(),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Row(
      children: <Widget>[
        Expanded(child: _buildDivider()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(widgetState.name),
        ),
        Expanded(child: _buildDivider()),
      ],
    );
  }

  Widget _buildDivider() {
    return Divider(height: 1, color: Colors.grey);
  }
}
