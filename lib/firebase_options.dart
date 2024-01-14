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
    apiKey: 'AIzaSyCFkRf7xj8WJTHbnIZZBI5yPor4VFUWgjU',
    appId: '1:673628646927:web:267621ea7435ace385bd7a',
    messagingSenderId: '673628646927',
    projectId: 'healtapp-7fc08',
    authDomain: 'healtapp-7fc08.firebaseapp.com',
    storageBucket: 'healtapp-7fc08.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBFne8Te-J3DKGifVE1Y1B9U3Bp3TlYCuo',
    appId: '1:673628646927:android:e48458486bb4984f85bd7a',
    messagingSenderId: '673628646927',
    projectId: 'healtapp-7fc08',
    storageBucket: 'healtapp-7fc08.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDtHqdgQY6gTmU6Gzg6nDEGC1u4QLHVJ3k',
    appId: '1:673628646927:ios:d9fa4b80e372230d85bd7a',
    messagingSenderId: '673628646927',
    projectId: 'healtapp-7fc08',
    storageBucket: 'healtapp-7fc08.appspot.com',
    iosBundleId: 'com.example.healtApp',
  );
}
