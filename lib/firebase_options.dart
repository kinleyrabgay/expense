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
        return macos;
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
    apiKey: 'AIzaSyAlP7XwsoY6QYfLsL340mP3GfDkpSBvb5M',
    appId: '1:863171498998:web:a69eea8704198c85242dd7',
    messagingSenderId: '863171498998',
    projectId: 'expense-1cc4e',
    authDomain: 'expense-1cc4e.firebaseapp.com',
    storageBucket: 'expense-1cc4e.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAIY9b6SsIyTTEv7KXcT0-4_Oow_jYMj20',
    appId: '1:863171498998:android:22d4412ce92ac37d242dd7',
    messagingSenderId: '863171498998',
    projectId: 'expense-1cc4e',
    storageBucket: 'expense-1cc4e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAZe88hwCtxtM7DnLXLgPyHKsmaj6fxems',
    appId: '1:863171498998:ios:9c2633095f6df177242dd7',
    messagingSenderId: '863171498998',
    projectId: 'expense-1cc4e',
    storageBucket: 'expense-1cc4e.appspot.com',
    iosClientId: '863171498998-kaja8jtbfq06s20a1phb6oakf7dvmrmm.apps.googleusercontent.com',
    iosBundleId: 'com.example.expense',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAZe88hwCtxtM7DnLXLgPyHKsmaj6fxems',
    appId: '1:863171498998:ios:64f67f419a15bf1b242dd7',
    messagingSenderId: '863171498998',
    projectId: 'expense-1cc4e',
    storageBucket: 'expense-1cc4e.appspot.com',
    iosClientId: '863171498998-v86j38ijlnb7rseuu55h1p825e4bftcb.apps.googleusercontent.com',
    iosBundleId: 'com.example.expense.RunnerTests',
  );
}
