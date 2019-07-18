import 'package:flutter/material.dart';


class FirstPage extends StatelessWidget {

	@override
  Widget build(BuildContext context) {
    return Scaffold(
	    body: Center(
		    child: Column(
			    mainAxisAlignment: MainAxisAlignment.center,
			    children: <Widget>[
			    	Text('First page'),
				    RaisedButton(
					    child: Text('move to second page'),
					    onPressed: () => Navigator.of(context).pushNamed('/second'),
				    )
			    ],
		    ),
	    ),
    );
  }

}