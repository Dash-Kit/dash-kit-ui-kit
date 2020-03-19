# Flutter UIKit

Flutter library for showing all widgets states

## Install
add in your ```pubspec.yaml```:
```
uikit:
    git:
      url: git://github.com/mobile-dualbootpartners/flutter-ui-kit
      ref: v0.0.1
```

## How to use

Create a builder for a custom widget and include in it all the states of the widget that you want to show in the UIKit:

```dart
class TextUiKitBuilder extends UiKitBuilder {
  @override
  Type get componentType => Text;

  @override
  void buildComponentStates() {
    build('Black text', const Text('Hello world!'));
    build(
      'Grey text',
      const Text(
        'Hello world!',
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}
```

Use style for the file name like ``<widget name>.uikit.dart``, example: ``text.uikit.dart``.

---

Register groups widgets in the UIKit:

```dart
void configurationUIKit() {
  UiKit.register(
    () => [
      UiComponentGroup('Text widgets', [
        TextUiKitBuilder(),
      ]),
      UiComponentGroup('Button widgets', [
        FlatButtonUiKitBuilder(),
      ]),
    ],
  );
}
```

Use ```configurationUIKit()``` in ```main.dart```:
```dart
void main() { 
  configurationUIKit();
  runApp(MyApp());
}
```
---

Use ```UIKitPage()``` in the place you need:
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
you can use ```componentWithPadding``` if neaded:
```dart
UiKitPage(componentWithPadding: true)
```

You can also see the [example](https://github.com/mobile-dualbootpartners/flutter-ui-kit/tree/master/example) project
