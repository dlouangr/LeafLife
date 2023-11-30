import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA07RpemCtyXXEEG0Yn7zn9pH5XYGJE_s4",
            authDomain: "leaflife-6a8bf.firebaseapp.com",
            projectId: "leaflife-6a8bf",
            storageBucket: "leaflife-6a8bf.appspot.com",
            messagingSenderId: "1011696699856",
            appId: "1:1011696699856:web:2899d698e2680abbfe91d5"));
  } else {
    await Firebase.initializeApp();
  }
}
