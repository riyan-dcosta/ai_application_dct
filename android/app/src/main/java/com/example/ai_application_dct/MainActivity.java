package com.example.ai_application_dct;

import android.os.BatteryManager;

import androidx.annotation.NonNull;

//import com.ibm.watson.developer_cloud.text_to_speech.v1.TextToSpeech;
//import com.ibm.watson.developer_cloud.text_to_speech.v1.model.Voice;

import com.sun.speech.freetts.Voice;
import com.sun.speech.freetts.VoiceManager;
import com.sun.speech.freetts.en.us.CMUDiphoneVoice;
import com.sun.speech.freetts.en.us.CMULexicon;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.MethodChannel;


public class MainActivity extends FlutterActivity {
    private static final String CHANNEL = "com.api_application_dct.dev/kotlin";
    private static final String getBatteryLevel = "getBatteryLevel";
    private static final String playAudioFromText = "playAudioFromText";


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
                    } else if (call.method.equals(playAudioFromText)) {
                        boolean ret = playAudioFromJAR();
                        if (ret) {

                            result.success(true);
                        } else {
                            result.error("Error", "error message", null);
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

    private boolean playAudioFromJAR() {
        try {
            System.setProperty("freetts.voices", "com.sun.speech.freetts.en.us.cmu_us_kal.KevinVoiceDirectory");
            VoiceManager voiceManager = VoiceManager.getInstance();
//        Voice voice = voiceManager.getVoice("kevin16");
            Voice voice = new CMUDiphoneVoice();
            voice.setLexicon(new CMULexicon());
            voice.allocate();
            voice.speak("Hello There");

        } catch (Exception e) {
            return false;
        }
        return true;
    }
}
