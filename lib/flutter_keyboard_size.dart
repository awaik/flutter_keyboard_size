library flutter_keyboard_size;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screen_height.dart';

export 'package:provider/provider.dart';
export 'screen_height.dart';

class KeyboardSizeProvider extends StatelessWidget {
  final Widget child;
  // set the size of small screens
  final double smallSize;

  KeyboardSizeProvider({this.child = const SizedBox(), this.smallSize = 500});

  @override
  Widget build(BuildContext context) {
    ScreenHeight _screenHeight = ScreenHeight(
        initialHeight: MediaQuery.of(context).size.height,
        smallSize: smallSize);
    _screenHeight.change(MediaQuery.of(context).viewInsets.bottom);
    return ChangeNotifierProvider.value(value: _screenHeight, child: child);
  }
}
