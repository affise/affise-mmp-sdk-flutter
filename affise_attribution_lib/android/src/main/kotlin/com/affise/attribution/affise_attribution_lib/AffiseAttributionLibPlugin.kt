package com.affise.attribution.affise_attribution_lib

import android.app.Application
import android.content.Intent
import android.net.Uri
import android.os.Handler
import android.os.Looper
import com.affise.attribution.deeplink.toDeeplinkValue
import com.affise.attribution.internal.AffiseApiMethod
import com.affise.attribution.internal.AffiseApiWrapper
import com.affise.attribution.internal.data.DataMapper
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.EventChannel.EventSink
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry


/** AffiseAttributionPlugin */
class AffiseAttributionLibPlugin :
    FlutterPlugin,
    MethodCallHandler,
    EventChannel.StreamHandler,
    ActivityAware,
    PluginRegistry.NewIntentListener
{

    companion object {
        private const val CHANNEL = "affise_sdk/api"
        private const val EVENTS_CHANNEL = "affise_sdk/api_events"
    }

    private var channel: MethodChannel? = null
    private var eventChannel: EventChannel? = null
    private var apiWrapper: AffiseApiWrapper? = null
    private val handler: Handler = Handler(Looper.getMainLooper())

    private var initialLink: String? = null
    private var events: EventSink? = null

    override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(flutterPluginBinding.binaryMessenger, CHANNEL)
        channel?.setMethodCallHandler(this)

        eventChannel = EventChannel(flutterPluginBinding.binaryMessenger, EVENTS_CHANNEL)
        eventChannel?.setStreamHandler(this)

        apiWrapper = AffiseApiWrapper(flutterPluginBinding.applicationContext as? Application)
        apiWrapper?.flutter()
        apiWrapper?.setCallback { name, map ->
            handler.post {
                channel?.invokeMethod(name, map)
            }
        }
    }

    override fun onMethodCall(call: MethodCall, result: Result) {
        val data = call.arguments as? Map<String, *>
        if (data == null) {
            result.error("no data", null, null)
            return
        }
        if (call.method == "initial_link") {
            if (!initialLink.isNullOrBlank()) {
                handleDeeplink(initialLink)
            }
        } else {
            apiWrapper?.call(AffiseApiMethod.from(call.method), data, ResultWrapper(result))
        }
    }

    private fun handleIntent(intent: Intent): Boolean {
        if (intent.action != Intent.ACTION_VIEW) return false
        initialLink = intent.dataString
        handleDeeplink(intent.dataString)
        return true
    }

    private fun handleDeeplink(url: String?) {
        apiWrapper?.handleDeeplink(url)

        val value = Uri.parse(url).toDeeplinkValue()
        events?.success(
            DataMapper.fromDeeplinkValue(value)
        )
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        channel?.setMethodCallHandler(null)
        eventChannel?.setStreamHandler(null)
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        binding.addOnNewIntentListener(this)
        handleIntent(binding.activity.intent)
        apiWrapper?.activity = binding.activity
    }

    override fun onNewIntent(intent: Intent): Boolean {
        return handleIntent(intent)
    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
        binding.addOnNewIntentListener(this)
    }

    override fun onDetachedFromActivityForConfigChanges() = Unit

    override fun onDetachedFromActivity() {
        apiWrapper?.activity = null
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        this.events = events
    }

    override fun onCancel(arguments: Any?) {
        events = null
    }
}
