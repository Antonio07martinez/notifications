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
    apiKey: 'AIzaSyDWRzNQkrh0MHjqeWnrf0YgPqVekGJVvH8',
    appId: '1:253603417363:web:8e6f417033b930feeb1ee6',
    messagingSenderId: '253603417363',
    projectId: 'notification-test171810109',
    authDomain: 'notification-test171810109.firebaseapp.com',
    storageBucket: 'notification-test171810109.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCWqiXcyfT7ZArR7Dm9DBcU2mntEig8AOY',
    appId: '1:253603417363:android:41cc92765d606c7ceb1ee6',
    messagingSenderId: '253603417363',
    projectId: 'notification-test171810109',
    storageBucket: 'notification-test171810109.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA3hkEe7cMwH7OXGHlK1JRIwLEz8bV8jCc',
    appId: '1:253603417363:ios:a630b0661cbd29dfeb1ee6',
    messagingSenderId: '253603417363',
    projectId: 'notification-test171810109',
    storageBucket: 'notification-test171810109.appspot.com',
    iosClientId: '253603417363-tlfoclhs50cqd9vphh2dno88ek02b1go.apps.googleusercontent.com',
    iosBundleId: 'com.example.notimovil',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA3hkEe7cMwH7OXGHlK1JRIwLEz8bV8jCc',
    appId: '1:253603417363:ios:dc23101c10363193eb1ee6',
    messagingSenderId: '253603417363',
    projectId: 'notification-test171810109',
    storageBucket: 'notification-test171810109.appspot.com',
    iosClientId: '253603417363-qg26jfofrfpec42nla4bbgt8go32glot.apps.googleusercontent.com',
    iosBundleId: 'com.example.notimovil.RunnerTests',
  );
}
