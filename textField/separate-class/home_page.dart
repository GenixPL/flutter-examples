import 'package:flutter/material.dart';

import 'package:text_fields/MyTextField.dart';


class HomePage extends StatefulWidget {
	@override
	_HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

	String _text = '';

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: Center(
				child: Column(
					mainAxisAlignment: MainAxisAlignment.center,
					children: <Widget>[

						Text(_text),

					],
				),
			),
		);
	}

	_setText(String str) {
		setState(() {
		  _text = str;
		});
	}


}