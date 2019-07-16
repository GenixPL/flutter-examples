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
							child: BlueButton('press me', _onPressed),
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

class BlueButton extends StatelessWidget {

	String _text;
	Function _onPressed;


	BlueButton(this._text, this._onPressed);

	@override
	Widget build(BuildContext context) {
    return RaisedButton(
	    child: Text(_text.toUpperCase(), style: TextStyle(fontWeight: FontWeight.w700),),
	    color: Colors.blue,
	    textColor: Colors.white,
	    onPressed: _onPressed,
    );
  }
}