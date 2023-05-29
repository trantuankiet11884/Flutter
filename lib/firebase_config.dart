import 'package:firebase_core/firebase_core.dart';

class FirebaseConfig {
  static const String apiKey = 'AIzaSyDH9VjoK-Uwm-Cc5dBMedS91MNsiKJOWzc';
  static const String authDomain = 'ec-flutter.firebaseapp.com';
  static const String projectId = 'ec-flutter';
  static const String storageBucket = 'ec-flutter.appspot.com';
  static const String messagingSenderId = '814181369194';
  static const String appId = '1:814181369194:web:e27fa1543a3a830ec75113';
  static const String measurementId = 'G-6SZC0RZF25';

  static Future<void> initializeApp() async {
    FirebaseOptions options = FirebaseOptions(
      apiKey: FirebaseConfig.apiKey,
      authDomain: FirebaseConfig.authDomain,
      projectId: FirebaseConfig.projectId,
      storageBucket: FirebaseConfig.storageBucket,
      messagingSenderId: FirebaseConfig.messagingSenderId,
      appId: FirebaseConfig.appId,
      measurementId: FirebaseConfig.measurementId,
    );

    await Firebase.initializeApp(options: options);
  }
}
