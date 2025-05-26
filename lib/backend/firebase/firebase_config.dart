import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDQw7KaTgH6dPJCpMSK_fBsKw8e2vJhnFc",
            authDomain: "directorioempresas-fb85e.firebaseapp.com",
            projectId: "directorioempresas-fb85e",
            storageBucket: "directorioempresas-fb85e.firebasestorage.app",
            messagingSenderId: "437348689998",
            appId: "1:437348689998:web:61397d3785c21e52123b1f",
            measurementId: "G-M171WL4WDL"));
  } else {
    await Firebase.initializeApp();
  }
}
