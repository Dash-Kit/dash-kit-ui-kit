import 'package:uikit/src/uikit_builder.dart';

class UiComponentGroup {
  const UiComponentGroup(this.name, this.builders);
  final String name;
  final List<UiKitBuilder> builders;
}
