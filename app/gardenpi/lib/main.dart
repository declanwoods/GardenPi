import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/settings.dart';
import 'pages/screensaver.dart';
import 'constants.dart';

void main() {
  runApp(GardenPiApp());
}

class GardenPiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GardenPi',
      home: ScreensaverPage(),
      routes: {
        "/home": (context) => HomePage(title: 'Home'),
        "/settings": (context) => SettingsPage(title: 'Settings'),
      },
    );
  }
}