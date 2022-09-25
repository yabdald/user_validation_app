import 'package:blue_app/screens/login.dart';
import 'package:blue_app/screens/register.dart';
import 'package:blue_app/screens/profile.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blue App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: login(),
      routes: {
        '/login': (context) => login(),
        '/register': (context) => Register(),
        '/profile': (context) => profile(),
      },
    );
  }
}
