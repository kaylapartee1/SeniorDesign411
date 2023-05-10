import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAIBoJ9JAIjESo97bgfWohgDCQOb-s-Ksw",
            authDomain: "flutter-app-63ed3.firebaseapp.com",
            projectId: "flutter-app-63ed3",
            storageBucket: "flutter-app-63ed3.appspot.com",
            messagingSenderId: "309564955589",
            appId: "1:309564955589:web:e5837d4318a43fcf8c89ac",
            measurementId: "G-DQCQNLZFJM"));
  } else {
    await Firebase.initializeApp();
  }
}
