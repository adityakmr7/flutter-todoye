import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  static const String id = 'registration_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: FlatButton(
            onPressed: () {
              print('You registerd');
            },
            child: Text('Register Screen'),
          ),
        ),
      ),
    );
  }
}
