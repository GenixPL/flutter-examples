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
								child: Text('press me'.toUpperCase(), style: TextStyle(fontWeight: FontWeight.w700),),
								color: Colors.blue,
								textColor: Colors.white,
								onPressed: _onPressed,
							),
						),
					],
				);
			}),
		);
	}

	_onPressed() {
		print('Button was pressed.');
	}
}