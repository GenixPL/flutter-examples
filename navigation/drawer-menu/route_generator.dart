import 'package:flutter/material.dart';

import 'package:navigation/pages/first.dart';
import 'package:navigation/pages/home.dart';
import 'package:navigation/pages/second.dart';


class RouteGenerator {

	static Route<dynamic> generateRoute(RouteSettings settings) {
		final args = settings.arguments;

		switch (settings.name) {
			case '/':
				return MaterialPageRoute(builder: (_) => HomePage());

			case '/first':
				return MaterialPageRoute(builder: (_) => FirstPage());

			case '/second':
				return MaterialPageRoute(builder: (_) => SecondPage());

			default:
				return _errorRoute();
		}
	}

	static Route<dynamic> _errorRoute() {
		return MaterialPageRoute(builder: (_) {
			return Scaffold(
				body: Center(
					child: Text('ERROR ROUTE'),
				),
			);
		});
	}
}