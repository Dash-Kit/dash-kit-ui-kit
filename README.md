# Flutter UIKit

A Flutter plugin to demonstrate the set of widgets created for an app with available widget states. This plugin may be used either for widget testing or to for getting acquainted with widgets used in project.

<img src="https://github.com/Dash-Kit/dash-kit-ui-kit/blob/master/readme_images/1.png" alt="drawing" width="250"/> &nbsp;
<img src="https://github.com/Dash-Kit/dash-kit-ui-kit/blob/master/readme_images/2.png" alt="drawing" width="250"/> <br />


## Install

To use this plugin, add ```dash_kit_uikit ``` as a [dependency in your pubspec.yaml file](https://flutter.dev/docs/development/packages-and-plugins/using-packages). 


## Getting Started

Create or use existing widgets required for your app and create UiKitBuilder classes  that will contain all required states for each individual widget.

```dart
class PrimaryButtonUiKitBuilder extends UiKitBuilder {
  @override
  Type get componentType => PrimaryButton;

  @override
  void buildComponentStates() {
    build(
      'Enabled Primary Button',
      Center(
        child: PrimaryButton(
          text: 'Enabled Primary Button',
          onPressed: () {},
          expanded: false,
        ),
      ),
    );
    build(
      'Disabled Primary Button',
      const PrimaryButton(text: 'Disabled Primary Button'),
    );
    build(
      'Expanded Primary Button',
      PrimaryButton(
        text: 'Enabled Primary Button',
        onPressed: () {},
        expanded: true,
      ),
    );
  }
}
```

---

Create UiKitPage configurator, using ``UiKit.register method``. This function should contain list of UiComponentGroup elements for each individual group of widgets (buttons, input fields, etc.). Each component group receives the string for the group name and list of UiKitBuilder elements for each required widget.

```dart
void registerUiKitWidgetGroups() {
  UiKit.register(
    () => [
      UiComponentGroup('Text widgets', [
        TextUiKitBuilder(),
      ]),
      UiComponentGroup('Button widgets', [
        PrimaryButtonUiKitBuilder(),
        FlatButtonUiKitBuilder(),
      ]),
    ],
  );
}
```

---

Configure set of required widgets by registering widget groups in ```main.dart```:

```dart
void main() {
  registerUiKitWidgetGroups();
  runApp(MyApp());
}
```

---

Place UiKitPage to required place:

```dart
@override
  Widget build(BuildContext context) {
    eturn MaterialApp(
      title: 'UIKit Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UiKitPage(),
    );
  }
```

You can use componentWithPadding if neaded:

```dart
UiKitPage(componentWithPadding: true)
```

---

You can also check the [example project](https://github.com/Dash-Kit/dash-kit-ui-kit/tree/master/example).