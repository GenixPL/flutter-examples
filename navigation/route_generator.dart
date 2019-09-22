import 'package:flutter/material.dart';

// add to MaterialApp: navigatorObservers: [RouteGenerator.instance]
// Navigator.pushNamedAndRemoveUntil should be used only with
// homeRoute being pushed.

class RouteGenerator with NavigatorObserver {
  RouteGenerator._privateConstructor();
  static final RouteGenerator instance = RouteGenerator._privateConstructor();
  static const String TAG = 'RouteGenerator';

  stack.Stack<String> _routes = stack.Stack<String>();

  get lastRoute => _routes.top();

  Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;

    _routes.push(settings.name);

    Log.d(TAG, 'generateRoute');

    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomePage());

      case sampleRoute:
        return MaterialPageRoute(builder: (_) => SamplePage());

      default:
        return _errorRoute('Wrong path was specified.');
    }
  }

  Route<dynamic> _errorRoute(String msg) {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        body: Center(
          child: Text('ERROR ROUTE \n $msg'),
        ),
      );
    });
  }

  @override
  void didPop(Route route, Route previousRoute) {
    _routes.pop();

    Log.d(TAG, 'didPop');

    super.didPop(route, previousRoute);
  }

  // Navigator.pushNamedAndRemoveUntil should be used only with
  // homeRoute being pushed.
  @override
  void didRemove(Route route, Route previousRoute) {
    _routes.pop();

    if (_routes.length == 0) {
      _routes.push(homeRoute);
    }

    Log.d(TAG, 'didRemove');

    super.didRemove(route, previousRoute);
  }
}
