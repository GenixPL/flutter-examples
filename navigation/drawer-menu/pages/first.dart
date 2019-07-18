import 'package:flutter/material.dart';

import 'package:navigation/my_drawer.dart';


class FirstPage extends StatelessWidget {

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text('FIRST'),
			),
			drawer: MyDrawer(),
			body: Center(
				child: Text('Use hamburger to navigate'),
			),
		);
	}

}