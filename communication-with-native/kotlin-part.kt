package com.genix.native_communication

import android.os.Bundle

import io.flutter.app.FlutterActivity
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant


class MainActivity : FlutterActivity() {

	/**
	 * After making any changes inside native part of app, we have to rebuild the whole app
	 */

	override fun onCreate(savedInstanceState: Bundle?) {
		super.onCreate(savedInstanceState)
		GeneratedPluginRegistrant.registerWith(this)

		//set the channel
		//must be the same 1 ("channelName")
		MethodChannel(flutterView, "channelName").MethodCallHandler { call, result ->
			if (call.method == "someFunctionName") { //must be the same 2
				result.success(nativeFunction())
			} else {
				result.notImplemented()
			}
		}
	}

	private fun nativeFunction(): String {
		return "Message from native."
	}
}
