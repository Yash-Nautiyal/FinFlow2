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
    apiKey: 'AIzaSyC_jB_EuVWIBjkUCInLfz7KmGgC9oaXXT4',
    appId: '1:460391313115:web:b803d9cd9b5be2539866fe',
    messagingSenderId: '460391313115',
    projectId: 'finflow-e5632',
    authDomain: 'finflow-e5632.firebaseapp.com',
    storageBucket: 'finflow-e5632.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAU74Kyr3cAZbjrZed1o2-FZtKh5TvRcl8',
    appId: '1:460391313115:android:f9b78faa78a4fe359866fe',
    messagingSenderId: '460391313115',
    projectId: 'finflow-e5632',
    storageBucket: 'finflow-e5632.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBB2H2EPKRiPKktyrVxvMC_A3aemeUYgrM',
    appId: '1:460391313115:ios:c1581ba3a5a1a33d9866fe',
    messagingSenderId: '460391313115',
    projectId: 'finflow-e5632',
    storageBucket: 'finflow-e5632.appspot.com',
    iosBundleId: 'com.example.finflow',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBB2H2EPKRiPKktyrVxvMC_A3aemeUYgrM',
    appId: '1:460391313115:ios:921a65d5c214834f9866fe',
    messagingSenderId: '460391313115',
    projectId: 'finflow-e5632',
    storageBucket: 'finflow-e5632.appspot.com',
    iosBundleId: 'com.example.finflow.RunnerTests',
  );
}
