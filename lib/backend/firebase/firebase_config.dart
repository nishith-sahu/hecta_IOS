import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAXkTh_GnyHcy-NMb6pQ9FvtH5tWqrD0Ws",
            authDomain: "hecta-a99ff.firebaseapp.com",
            projectId: "hecta-a99ff",
            storageBucket: "hecta-a99ff.appspot.com",
            messagingSenderId: "677987645457",
            appId: "1:677987645457:web:d874a2f5ae763114d119b0",
            measurementId: "G-2H4XZ4SXBS"));
  } else {
    await Firebase.initializeApp();
  }
}
