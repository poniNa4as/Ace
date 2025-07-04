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
    apiKey: 'AIzaSyDZwpTrm5COG-E0oYHkWFPcQLu2hp5KaHE',
    appId: '1:159033862151:web:4734d4738cfd634b8022a2',
    messagingSenderId: '159033862151',
    projectId: 'project-ace-8eac5',
    authDomain: 'project-ace-8eac5.firebaseapp.com',
    storageBucket: 'project-ace-8eac5.firebasestorage.app',
    measurementId: 'G-V7PF9KZXQX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCPxYxSDQmENZ1kQKlJvbA4df0-QLhJkNo',
    appId: '1:159033862151:android:afb583dd2e716f758022a2',
    messagingSenderId: '159033862151',
    projectId: 'project-ace-8eac5',
    storageBucket: 'project-ace-8eac5.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAFlYr2ICrVjecAsdSpjquFvFkEYbj-J9g',
    appId: '1:159033862151:ios:994fcad76f87b0438022a2',
    messagingSenderId: '159033862151',
    projectId: 'project-ace-8eac5',
    storageBucket: 'project-ace-8eac5.firebasestorage.app',
    iosBundleId: 'com.example.aceProject',
  );
}
