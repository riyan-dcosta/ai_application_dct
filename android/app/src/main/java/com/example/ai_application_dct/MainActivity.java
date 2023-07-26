package com.example.ai_application_dct;

import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.BatteryManager;
import android.os.Build;

import androidx.annotation.NonNull;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.MethodChannel;

public class MainActivity extends FlutterActivity {
    private static final String CHANNEL = "com.api_application_dct.dev/kotlin";
    private static final String getBatteryLevel = "getBatteryLevel";

    @Override
    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        super.configureFlutterEngine(flutterEngine);
        new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), CHANNEL)
                .setMethodCallHandler((call, result) -> {
                    if (call.method.equals(getBatteryLevel)) {
                        int batteryLevel = getBatteryLevel();
                        if (batteryLevel > -1) {
                            result.success(batteryLevel);
                        } else {
                            result.error("BATTERY UNAVAIBLE",
                                    "cannot get battery charge",
                                    null);
                        }
                    }
                });
    }

    private int getBatteryLevel() {
        int batteryLevel = -1;
        BatteryManager batteryManager = (BatteryManager) getSystemService(BATTERY_SERVICE);
        batteryLevel = batteryManager.getIntProperty(BatteryManager.BATTERY_PROPERTY_CAPACITY);
        return batteryLevel;
    }
}
