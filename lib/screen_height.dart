import 'package:flutter/foundation.dart';

class ScreenHeight extends ChangeNotifier {
  ScreenHeight({this.initialHeight = 0, this.smallSize = 500});

  double keyboardHeight = 0;
  double initialHeight;
  double smallSize;
  bool get isSmall => (initialHeight - keyboardHeight) < smallSize;
  bool get isOpen => keyboardHeight > 1;
  double get screenHeight => initialHeight;

  void change(double a) {
    keyboardHeight = a;
    notifyListeners();
  }
}
