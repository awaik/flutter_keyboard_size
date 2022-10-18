import 'package:flutter/material.dart';
import 'package:flutter_keyboard_size/flutter_keyboard_size.dart';

class BodyOfMainScreen extends StatelessWidget {
  const BodyOfMainScreen({
    Key? key,
    required int counter,
  })  : _counter = counter,
        super(key: key);

  final int _counter;

  @override
  Widget build(BuildContext context) {
    return Consumer<ScreenHeight>(
      builder: (context, res, child) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const TextField(),
              Icon(Icons.accessibility, size: res.isSmall ? 20.0 : 60.0),
              Text(
                'Keyboard open state',
                style: TextStyle(
                  fontSize: res.isSmall ? 18.0 : 30.0,
                ),
              ),
              Text(
                '${res.isOpen}',
                style: TextStyle(
                  fontSize: res.isSmall ? 18.0 : 30.0,
                  color: res.isOpen ? Colors.green[700] : Colors.red[800],
                  fontWeight: res.isSmall ? FontWeight.bold : FontWeight.normal,
                ),
              ),
              Text(
                'keyboard height is',
                style: TextStyle(
                  fontSize: res.isSmall ? 18.0 : 30.0,
                ),
              ),
              Text(
                '${res.keyboardHeight}',
                style: TextStyle(
                  fontSize: res.isSmall ? 18.0 : 30.0,
                  color: res.isOpen ? Colors.green[700] : Colors.red[800],
                  fontWeight: res.isSmall ? FontWeight.bold : FontWeight.normal,
                ),
              ),
              Text(
                'screen height is',
                style: TextStyle(
                  fontSize: res.isSmall ? 18.0 : 30.0,
                ),
              ),
              Text(
                '${res.screenHeight}',
                style: TextStyle(
                  fontSize: res.isSmall ? 18.0 : 30.0,
                  color: res.isOpen ? Colors.green[700] : Colors.red[800],
                  fontWeight: res.isSmall ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
