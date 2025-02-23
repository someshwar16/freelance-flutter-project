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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA6Zrv47zGJhTnt0ka_7U9KgxfZ7OtGgrQ',
    appId: '1:499029947273:android:14def3d22189c1d710a758',
    messagingSenderId: '499029947273',
    projectId: 'argha-optics-inventory',
    storageBucket: 'argha-optics-inventory.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB5P8sYID4VmHbOwbxyjDl378kFIgbxRBU',
    appId: '1:499029947273:ios:0feddf5a7073e2e110a758',
    messagingSenderId: '499029947273',
    projectId: 'argha-optics-inventory',
    storageBucket: 'argha-optics-inventory.firebasestorage.app',
    androidClientId: '499029947273-0pnnla2nke1le0pmt0k8k11m3k6vtjqa.apps.googleusercontent.com',
    iosClientId: '499029947273-9klg4riii4ofqoja4io4qfl6jhv80t82.apps.googleusercontent.com',
    iosBundleId: 'com.example.freelancerTestPrject',
  );

}