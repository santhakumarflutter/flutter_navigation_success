import 'package:appone/DashboardScreen.dart';
import 'package:flutter/material.dart';

import 'package:appone/FirstScreen.dart';
import 'package:appone/SecondScreen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => DashboardScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/first': (context) => FirstScreen(),

        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => SecondScreen(),
      },
    ),
  );
}
