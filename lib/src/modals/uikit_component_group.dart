import 'package:dash_kit_uikit/src/uikit_builder.dart';

// ignore_for_file: prefer-match-file-name

/// [UiComponentGroup] - class for creating a group of widgets
/// that are joined by their common signs (Buttons, Views, etc.).
///
/// This class receives two parameters:
/// - [name] : String variable that will provide the name of a Group.
/// - [builders] : List of instances created from classes
/// extending [UiKitBuilder].
class UiComponentGroup {
  const UiComponentGroup(
    this.name,
    this.builders,
  );

  final String name;
  final List<UiKitBuilder> builders;
}
