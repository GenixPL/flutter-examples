package com.genix.native_communication

import android.os.Bundle
import android.util.Log

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
		MethodChannel(flutterView, "channelName").setMethodCallHandler { call, result ->
			if (call.method == "someFunctionName") {
				val lon = call.argument<Double>("lon")
				val lat = call.argument<Double>("lat")

				result.success(nativeFunction(lon!!, lat!!))
			} else {
				result.notImplemented()
			}
		}
	}

	private fun nativeFunction(lon: Double, lat: Double): String {
		Log.d("MainActivity", "$lon $lat")

		return "Message from native."
	}
}
