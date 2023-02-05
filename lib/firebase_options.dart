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
    apiKey: 'AIzaSyCxznVjg6FAo3x-fLiLUconVA33yLzVbLo',
    appId: '1:353074693284:web:91c6a0c2d9af7c96ed9231',
    messagingSenderId: '353074693284',
    projectId: 'hotel-booking-346c9',
    authDomain: 'hotel-booking-346c9.firebaseapp.com',
    storageBucket: 'hotel-booking-346c9.appspot.com',
    measurementId: 'G-ND8W35E2KV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB5pct5X4E4QS7wn_LuTn8l0ppLrL5bXGo',
    appId: '1:353074693284:android:9e5555d483d4567aed9231',
    messagingSenderId: '353074693284',
    projectId: 'hotel-booking-346c9',
    storageBucket: 'hotel-booking-346c9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDqZ8KcB-bH_vt29JHekNawazLDrTT5LYQ',
    appId: '1:353074693284:ios:df2191e5eb170762ed9231',
    messagingSenderId: '353074693284',
    projectId: 'hotel-booking-346c9',
    storageBucket: 'hotel-booking-346c9.appspot.com',
    iosClientId: '353074693284-h6sh5gd5t7gecs06g32vk4b3dlndkloj.apps.googleusercontent.com',
    iosBundleId: 'com.example.hotelBookingApp',
  );
}
