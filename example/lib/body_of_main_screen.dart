import 'package:flutter/material.dart';
import 'package:flutter_keyboard_size/flutter_keyboard_size.dart';

class BodyOfMainScreen extends StatelessWidget {
  const BodyOfMainScreen({
    Key key,
    @required int counter,
  })  : _counter = counter,
        super(key: key);

  final int _counter;

  @override
  Widget build(BuildContext context) {
    return Consumer<ScreenHeight>(
      builder: (context, _res, child) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(),
              Icon(Icons.accessibility, size: _res.isSmall ? 20.0 : 60.0),
              Text(
                'Keyboard open state',
                style: TextStyle(
                  fontSize: _res.isSmall ? 18.0 : 30.0,
                ),
              ),
              Text(
                '${_res.isOpen}',
                style: TextStyle(
                  fontSize: _res.isSmall ? 18.0 : 30.0,
                  color: _res.isOpen ? Colors.green[700] : Colors.red[800],
                  fontWeight:
                      _res.isSmall ? FontWeight.bold : FontWeight.normal,
                ),
              ),
              Text(
                'keyboard height is',
                style: TextStyle(
                  fontSize: _res.isSmall ? 18.0 : 30.0,
                ),
              ),
              Text(
                '${_res.keyboardHeight}',
                style: TextStyle(
                  fontSize: _res.isSmall ? 18.0 : 30.0,
                  color: _res.isOpen ? Colors.green[700] : Colors.red[800],
                  fontWeight:
                      _res.isSmall ? FontWeight.bold : FontWeight.normal,
                ),
              ),
              Text(
                'screen height is',
                style: TextStyle(
                  fontSize: _res.isSmall ? 18.0 : 30.0,
                ),
              ),
              Text(
                '${_res.screenHeight}',
                style: TextStyle(
                  fontSize: _res.isSmall ? 18.0 : 30.0,
                  color: _res.isOpen ? Colors.green[700] : Colors.red[800],
                  fontWeight:
                      _res.isSmall ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
