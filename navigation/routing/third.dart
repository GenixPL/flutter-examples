import 'package:flutter/material.dart';


class ThirdPage extends StatelessWidget {

	final	String _text1;
	final String _text2;


	//this is how we have to init finals (if not inside '()')
	ThirdPage(SmallDataClass sdc) :
			_text1 = sdc.str1,
			_text2 = sdc.str2;

	@override
  Widget build(BuildContext context) {
    return Scaffold(
			body: Center(
				child: Column(
					mainAxisAlignment: MainAxisAlignment.center,
					children: <Widget>[
						Text(_text1),
						Text(_text2),
					],
				),
			),
    );
  }


}

class SmallDataClass {
	String str1;
	String str2;


	SmallDataClass(this.str1, this.str2);
}