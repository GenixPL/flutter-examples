import 'package:flutter/material.dart';

import 'first.dart';
import 'home.dart';
import 'second.dart';
import 'third.dart';


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

			case '/third':
				return _handleThirdPageRoute(args);

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

	static Route<dynamic> _handleThirdPageRoute(Object args) {
		if (args is SmallDataClass) {
			return MaterialPageRoute(builder: (_) => ThirdPage(args));

		} else {
			return _errorRoute();
		}
	}
}