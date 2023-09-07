import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:personal_info/screens/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final Map<String, Widget Function(BuildContext)> routes =
      <String, WidgetBuilder>{
    '/home': (BuildContext context) => const IDcard(),
  };

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/home',
    routes: routes,
  ));
}

final Logger console = Logger();
