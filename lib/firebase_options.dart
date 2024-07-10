// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDuQCxTEF9xS7iUNNiDPaxOnyPAxGN-bTM',
    appId: '1:1062085519805:web:ef0cb36521faa25d404ad4',
    messagingSenderId: '1062085519805',
    projectId: 'fir-note-a5e8f',
    authDomain: 'fir-note-a5e8f.firebaseapp.com',
    storageBucket: 'fir-note-a5e8f.appspot.com',
    measurementId: 'G-WW47TSJB4Q',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBpSOPxxMV5SvvT4vuQx5kmYHm1mes_jSA',
    appId: '1:1062085519805:android:ec35f0cba507186d404ad4',
    messagingSenderId: '1062085519805',
    projectId: 'fir-note-a5e8f',
    storageBucket: 'fir-note-a5e8f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDkema9QuHG-0eOxbjh3HWmmnjNGzT9D6A',
    appId: '1:1062085519805:ios:b18e10ff0c84e9bd404ad4',
    messagingSenderId: '1062085519805',
    projectId: 'fir-note-a5e8f',
    storageBucket: 'fir-note-a5e8f.appspot.com',
    iosBundleId: 'com.example.firebaseNote',
  );
}
