import 'package:flutter/material.dart';


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
						Container(
							margin: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),

							child: TextField(
								onChanged: (String str) {
									setState(() {
									  _text = str;
									});
								},
							)

						),

					],
				),
			),
		);
	}


}