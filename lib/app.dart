import 'package:flutter/material.dart';

import 'package:tormenta_companion_app/src/main.dart';

void main() {
  runApp(CompanionApp());
}

class CompanionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Companion',
      theme: ThemeData(
        accentColor: Colors.teal,
        primaryColor: Colors.blue,
        primarySwatch: Colors.blue,
        // canvasColor: Colors.transparent,
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Main(),
    );
  }
}
