import 'package:flutter/material.dart';

import 'third.dart';


class HomePage extends StatelessWidget {

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: Center(
				child: Column(
					mainAxisAlignment: MainAxisAlignment.center,
					children: <Widget>[
						Text('Home Page'),

						Row(
							mainAxisAlignment: MainAxisAlignment.center,
							children: <Widget>[
								RaisedButton(
									child: Text('move to page 1 no args'),
									onPressed: () => Navigator.of(context).pushNamed('/first'),
								),
							],
						),

						Row(
							mainAxisAlignment: MainAxisAlignment.center,
							children: <Widget>[
								RaisedButton(
									child: Text('move to page 3 with args'),
									onPressed: () => Navigator.of(context).pushNamed('/third', arguments: SmallDataClass('str1 hello', 'str2 bye')),
								)
							],
						),
					],
				),
			),
		);
	}
}
