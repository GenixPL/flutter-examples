import 'package:flutter/material.dart';


class MyTextField extends StatelessWidget {

	final Function(String) _setText;

	MyTextField(this._setText);

	@override
  Widget build(BuildContext context) {
    return Container(
			child: TextField(
				onChanged: (string) => _setText(string),
			),
    );
  }

}