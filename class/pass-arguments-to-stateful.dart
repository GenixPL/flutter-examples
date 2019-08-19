import 'package:flutter/material.dart';
import 'package:my_word/models/user_set.dart';


class EditSetPage extends StatefulWidget {
	
	final UserSet userSet;
	
	EditSetPage({Key key, @required this.userSet}) : super(key: key); // or EditSetPage(this.userSet);
	
	@override
	_EditSetPageState createState() => _EditSetPageState(userSet);
}


class _EditSetPageState extends State<EditSetPage> {
	
	UserSet _set;
	
	_EditSetPageState(this._set);
	
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			//...
		);
	}
	
}