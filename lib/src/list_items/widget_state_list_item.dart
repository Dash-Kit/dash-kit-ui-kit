import 'package:dash_kit_uikit/src/modals/component_state.dart';
import 'package:flutter/material.dart';

// ignore_for_file: avoid-returning-widgets
class WidgetStateListItem extends StatelessWidget {
  const WidgetStateListItem(
    this.widgetState, {
    Key? key,
    this.componentWithPadding = false,
  }) : super(key: key);

  final ComponentState widgetState;
  final bool componentWithPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          _buildTitle(),
          Container(height: 10),
          Container(
            padding: componentWithPadding
                ? const EdgeInsets.all(16)
                : EdgeInsets.zero,
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
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(widgetState.name),
        ),
        Expanded(child: _buildDivider()),
      ],
    );
  }

  Widget _buildDivider() {
    return const Divider(height: 1, color: Colors.grey);
  }
}
