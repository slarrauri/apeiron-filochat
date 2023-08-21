import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBHAK3CMQyEsjNfQ4gt50txS6S58_bicCo",
            authDomain: "apeiron-bio.firebaseapp.com",
            projectId: "apeiron-bio",
            storageBucket: "apeiron-bio.appspot.com",
            messagingSenderId: "1093883503160",
            appId: "1:1093883503160:web:502913046642e5d099fccd",
            measurementId: "G-6VL74MREFH"));
  } else {
    await Firebase.initializeApp();
  }
}
