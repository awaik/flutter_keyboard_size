# flutter_keyboard_size [![Pub](https://img.shields.io/pub/v/flutter_keyboard_size.svg)](https://pub.dev/packages/flutter_keyboard_size)

When the virtual keyboard is opened, we can get its height with MediaQuery.of(context).viewInsets.bottom

BUT, in case of complicated widgets tree, it doesn't work. So, every time we have to mutate the keyboard size down to the widget tree.

This package is the simple but useful provider that gives all info about keyboard in one place in any widget down the tree.

![Showcase|100x100, 10%](animated_example_screen.gif)

## Usage

After installing wrap Scaffold widget to

```dart
KeyboardSizeProvider(
      smallSize: 500.0,

```
where `smallSize` property is optional, default is 400.0

After that, down to the widget tree you can use Consumer widget to get info about keyboard

```dart
Widget build(BuildContext context) {
    return Consumer<ScreenHeight>(
      builder: (context, _res, child) {
        return Center(
```

available properties:

```dart
  double keyboardHeight
  double screenHeight
  bool isSmall // returns true if screen height becomes less then smallSize property
  bool isOpen // true if open
```

Full example is here






