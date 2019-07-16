import 'package:flutter/material.dart';


class Home extends StatelessWidget {

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text("HOME"),
			),
			body: Builder(builder: (context) {
				return Column(
					mainAxisAlignment: MainAxisAlignment.center,
					children: <Widget>[
						Center(
							child: RaisedButton(
								child: Text('press me'),
								onPressed: () {
									final snackBar = SnackBar(
										content: Text('Yay! A SnackBar!'),
										behavior: SnackBarBehavior.floating,

									);

									Scaffold.of(context).showSnackBar(snackBar);
								},
							),
						),
					],
				);
			}),
		);
	}
}