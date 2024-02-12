import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC5hi7SCYTobh47_lzanQT-q_mWeUJq274",
            authDomain: "medical-supporter.firebaseapp.com",
            projectId: "medical-supporter",
            storageBucket: "medical-supporter.appspot.com",
            messagingSenderId: "880380225303",
            appId: "1:880380225303:web:98526d1529fa9b5c2b7952",
            measurementId: "G-GL6QYHWGNX"));
  } else {
    await Firebase.initializeApp();
  }
}
