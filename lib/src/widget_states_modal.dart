import 'package:dash_kit_uikit/src/list_items/widget_state_list_item.dart';
import 'package:dash_kit_uikit/src/uikit_builder.dart';
import 'package:flutter/material.dart';

class WidgetStatesModal extends ModalRoute<void> {
  WidgetStatesModal(this.builder, {this.componentWithPadding = false});

  final UiKitBuilder builder;
  final bool componentWithPadding;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 200);

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => false;

  @override
  Color get barrierColor => Colors.black.withOpacity(0.5);

  @override
  String? get barrierLabel => null;

  @override
  bool get maintainState => true;

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text(builder.componentType.toString()),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView(shrinkWrap: true, children: _buildWidgets()),
    );
  }

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    const begin = Offset(0, 1);
    const end = Offset.zero;
    final tween = Tween(begin: begin, end: end);
    final offsetAnimation = animation.drive(tween);

    return SlideTransition(
      position: offsetAnimation,
      child: child,
    );
  }

  List<Widget> _buildWidgets() {
    return builder
        .getComponentsStates()
        .map(
          (item) => WidgetStateListItem(
            item,
            componentWithPadding: componentWithPadding,
          ),
        )
        .toList();
  }
}
