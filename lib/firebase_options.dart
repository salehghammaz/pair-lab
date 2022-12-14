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
    apiKey: 'AIzaSyAELQAfulN1BCjNrzLDLz6RVYqSzy6DQXs',
    appId: '1:647384246063:web:56613eaf2862582b81a3da',
    messagingSenderId: '647384246063',
    projectId: 'pair-lap',
    authDomain: 'pair-lap.firebaseapp.com',
    storageBucket: 'pair-lap.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC0AqYrwKjf9ymxHxZrrayrLDbjU951R0s',
    appId: '1:647384246063:android:84aca19ecf9d655681a3da',
    messagingSenderId: '647384246063',
    projectId: 'pair-lap',
    storageBucket: 'pair-lap.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD8TceKhK2jEA78EUjx9rG2W_27X0Bu8Ko',
    appId: '1:647384246063:ios:b121d40ecc069a3881a3da',
    messagingSenderId: '647384246063',
    projectId: 'pair-lap',
    storageBucket: 'pair-lap.appspot.com',
    iosClientId: '647384246063-j1011vdrt7cv54700hkodr3ugfd103cp.apps.googleusercontent.com',
    iosBundleId: 'com.example.myapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD8TceKhK2jEA78EUjx9rG2W_27X0Bu8Ko',
    appId: '1:647384246063:ios:b121d40ecc069a3881a3da',
    messagingSenderId: '647384246063',
    projectId: 'pair-lap',
    storageBucket: 'pair-lap.appspot.com',
    iosClientId: '647384246063-j1011vdrt7cv54700hkodr3ugfd103cp.apps.googleusercontent.com',
    iosBundleId: 'com.example.myapp',
  );
}
