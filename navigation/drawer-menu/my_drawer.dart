import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {

	@override
	Widget build(BuildContext context) {
		return Drawer(
			child: ListView(
				children: <Widget>[

					UserAccountsDrawerHeader(
						accountName: Text('Account name'),
						accountEmail: Text('account.email@example.org'),
						currentAccountPicture: Icon(Icons.account_box),
						otherAccountsPictures: <Widget>[ //in order to add some onClick actions we have to use GestureDetector
							GestureDetector(
								child: Icon(Icons.airline_seat_flat),
								onTap: () => print('Icon was clicked.'),
							),
							Icon(Icons.airline_seat_flat_angled),
							Icon(Icons.airline_seat_individual_suite),
						],
						decoration: BoxDecoration(
							color: Colors.blue
						),
					),

					ListTile(
						title: Text('First page'),
						trailing: Icon(Icons.arrow_right),
						onTap: () {
							Navigator.pop(context); //hides menu
							Navigator.pushNamed(context, '/first');
						},
					),

					Divider(),

					ListTile(
						title: Text('Second page'),
						trailing: Icon(Icons.arrow_right),
						onTap: () {
							Navigator.pop(context); //hides menu
							Navigator.pushNamed(context, '/second');
						},
					)

				],
			),
		);
	}

}