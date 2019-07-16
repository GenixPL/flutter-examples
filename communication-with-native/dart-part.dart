import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; //this is needed


class Home extends StatelessWidget {

	//we create a channel which is going to communicate with native
	static const platform = const MethodChannel('channelName'); //must be the same 1


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
								child: Text('Call Native'),
								onPressed: _callNative,
							),
						),
					],
				);
			}),
		);
	}

	//this method is going to call a native function
	Future<void> _callNative() async {
		try {
			String msgFromNative = await platform.invokeMethod('someFunctionName'); //must be the same 2

			print(msgFromNative);
		} on PlatformException catch (e) {
			print(e.message);
		}
	}
}