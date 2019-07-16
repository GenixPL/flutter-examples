import 'package:flutter/material.dart';


class Home extends StatelessWidget {

	final GlobalKey<ScaffoldState> _scaffoldStateKey = new GlobalKey<ScaffoldState>();


	@override
	Widget build(BuildContext context) {
		return Scaffold(
			key: _scaffoldStateKey,
			appBar: AppBar(
				title: Text("HOME"),
			),
			body: Column(
				mainAxisAlignment: MainAxisAlignment.center,
				children: <Widget>[
					Center(
						child: RaisedButton(
							child: Text('press me'),
							onPressed: _onPressed,
						),
					),
				],
			)
		);
	}

	_onPressed() {
		final snackBar = SnackBar(
			content: Text('Yay! A SnackBar!'),
			behavior: SnackBarBehavior.floating,

		);

		_scaffoldStateKey.currentState.showSnackBar(snackBar);
	}
}