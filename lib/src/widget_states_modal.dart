import 'package:flutter/material.dart';
import 'package:uikit/src/list_items/widget_state_list_item.dart';
import 'package:uikit/src/uikit_builder.dart';

class WidgetStatesModal extends ModalRoute<void> {
  WidgetStatesModal(this.builder);

  final UiKitBuilder builder;

  @override
  Duration get transitionDuration => Duration(milliseconds: 200);

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => false;

  @override
  Color get barrierColor => Colors.black.withOpacity(0.5);

  @override
  String get barrierLabel => null;

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
          icon: Icon(Icons.close),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView(shrinkWrap: true, children: _buildWidgets()),
    );
  }

  List<Widget> _buildWidgets() {
    return builder
        .getComponentsStates()
        .map((item) => WidgetStateListItem(item))
        .toList();
  }

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    var begin = Offset(0.0, 1.0);
    var end = Offset.zero;
    var tween = Tween(begin: begin, end: end);
    var offsetAnimation = animation.drive(tween);

    return SlideTransition(
      position: offsetAnimation,
      child: child,
    );
  }
}
