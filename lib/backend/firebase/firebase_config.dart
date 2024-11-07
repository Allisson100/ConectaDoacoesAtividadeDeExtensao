import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBot8UyfwD9fsKrK4GpW9jo02vUVIRUqAM",
            authDomain: "doacoes-69caa.firebaseapp.com",
            projectId: "doacoes-69caa",
            storageBucket: "doacoes-69caa.firebasestorage.app",
            messagingSenderId: "537517274575",
            appId: "1:537517274575:web:5848a3af2317e91d568eba"));
  } else {
    await Firebase.initializeApp();
  }
}
