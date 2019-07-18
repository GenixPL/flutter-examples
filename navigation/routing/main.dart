import 'package:flutter/material.dart';

import 'route_generator.dart';


void main() => runApp(MyApp());


/// home - first (no args) - second (no args)
///      \ third (args)
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
