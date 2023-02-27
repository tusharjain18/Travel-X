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
    apiKey: 'AIzaSyCwGVPMMbMHZ9KepMnaSbppiR5mb-6wcDs',
    appId: '1:249585137783:web:e966fc9854f0cf39312e72',
    messagingSenderId: '249585137783',
    projectId: 'travelx-1b811',
    authDomain: 'travelx-1b811.firebaseapp.com',
    storageBucket: 'travelx-1b811.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAUFcepMjp5-FQ7hvfhxR8Vh1t9so6GTu8',
    appId: '1:249585137783:android:49512441f10d648f312e72',
    messagingSenderId: '249585137783',
    projectId: 'travelx-1b811',
    storageBucket: 'travelx-1b811.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCuQy4lhKq3XElBC-7EzZxMgIdVRAyutUw',
    appId: '1:249585137783:ios:ed5fccbfc79526b4312e72',
    messagingSenderId: '249585137783',
    projectId: 'travelx-1b811',
    storageBucket: 'travelx-1b811.appspot.com',
    iosClientId: '249585137783-5ers90m3470njmk93hoj0v89q64jpgiq.apps.googleusercontent.com',
    iosBundleId: 'com.tushar.notes',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCuQy4lhKq3XElBC-7EzZxMgIdVRAyutUw',
    appId: '1:249585137783:ios:ed5fccbfc79526b4312e72',
    messagingSenderId: '249585137783',
    projectId: 'travelx-1b811',
    storageBucket: 'travelx-1b811.appspot.com',
    iosClientId: '249585137783-5ers90m3470njmk93hoj0v89q64jpgiq.apps.googleusercontent.com',
    iosBundleId: 'com.tushar.notes',
  );
}
