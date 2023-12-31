// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
    apiKey: 'AIzaSyCDdgadDwSySmO5oVex0Xo1gxKsCxfOrj4',
    appId: '1:1078540532495:web:5203029ecd1b530bfd1c7a',
    messagingSenderId: '1078540532495',
    projectId: 'chatapp-47f45',
    authDomain: 'chatapp-47f45.firebaseapp.com',
    storageBucket: 'chatapp-47f45.appspot.com',
    measurementId: 'G-SRWRR5SKTK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAU1M2ig21HWRygqqt5t6WBk5yUAjEkEg4',
    appId: '1:1078540532495:android:740bbce354262d38fd1c7a',
    messagingSenderId: '1078540532495',
    projectId: 'chatapp-47f45',
    storageBucket: 'chatapp-47f45.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA1QRcp0vd448enivkikJeALxgngETIroY',
    appId: '1:1078540532495:ios:9d82887502f0f3ebfd1c7a',
    messagingSenderId: '1078540532495',
    projectId: 'chatapp-47f45',
    storageBucket: 'chatapp-47f45.appspot.com',
    iosBundleId: 'com.shub.chatapp.chatapp',
  );
}
