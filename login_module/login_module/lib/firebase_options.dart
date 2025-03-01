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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyDolQLM7Q-Cl56r9MqpvAG7H1aFkbrvtOk',
    appId: '1:885510815623:web:79802f88f1f4e7f3a69d22',
    messagingSenderId: '885510815623',
    projectId: 'login-module-1441f',
    authDomain: 'login-module-1441f.firebaseapp.com',
    storageBucket: 'login-module-1441f.firebasestorage.app',
    measurementId: 'G-EE8DX72ST8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCZtPwLUAYbiCp9zFMzyf9WsaDmMEScJAc',
    appId: '1:885510815623:android:68011c423cab4d94a69d22',
    messagingSenderId: '885510815623',
    projectId: 'login-module-1441f',
    storageBucket: 'login-module-1441f.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCFRtjgJQZYZYdf__BsTcubmOGvwUrehJI',
    appId: '1:885510815623:ios:f0812f20f8eaa65ea69d22',
    messagingSenderId: '885510815623',
    projectId: 'login-module-1441f',
    storageBucket: 'login-module-1441f.firebasestorage.app',
    iosBundleId: 'com.example.loginModule',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCFRtjgJQZYZYdf__BsTcubmOGvwUrehJI',
    appId: '1:885510815623:ios:f0812f20f8eaa65ea69d22',
    messagingSenderId: '885510815623',
    projectId: 'login-module-1441f',
    storageBucket: 'login-module-1441f.firebasestorage.app',
    iosBundleId: 'com.example.loginModule',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDolQLM7Q-Cl56r9MqpvAG7H1aFkbrvtOk',
    appId: '1:885510815623:web:01f441b2863483b4a69d22',
    messagingSenderId: '885510815623',
    projectId: 'login-module-1441f',
    authDomain: 'login-module-1441f.firebaseapp.com',
    storageBucket: 'login-module-1441f.firebasestorage.app',
    measurementId: 'G-DXKEFNGXW5',
  );
}
