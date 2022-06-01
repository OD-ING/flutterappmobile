import 'package:appmobile/screens/guest/Auth.dart';
import 'package:appmobile/screens/guest/Password.dart';
import 'package:appmobile/screens/guest/Term.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Omeo',
      home: PasswordScreen(),
    );
  }
}
