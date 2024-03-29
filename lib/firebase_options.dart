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
    apiKey: 'AIzaSyCxQDqlwSDtDC5QuAFTzwL6ydb6nZoAWuQ',
    appId: '1:344163599580:web:cf128ce171076dfbd8a019',
    messagingSenderId: '344163599580',
    projectId: 'project-189f8',
    authDomain: 'project-189f8.firebaseapp.com',
    storageBucket: 'project-189f8.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB5rTA2Xz2CF8CspzHv-xRdJYq6X4f4VMw',
    appId: '1:344163599580:android:6ad3dfbec43dd1a0d8a019',
    messagingSenderId: '344163599580',
    projectId: 'project-189f8',
    storageBucket: 'project-189f8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCNZA8uZgu558MM_FGtc8sBwyVpNa4Di6Q',
    appId: '1:344163599580:ios:2aa746657c7cf52dd8a019',
    messagingSenderId: '344163599580',
    projectId: 'project-189f8',
    storageBucket: 'project-189f8.appspot.com',
    iosBundleId: 'com.example.kmunitySe',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCNZA8uZgu558MM_FGtc8sBwyVpNa4Di6Q',
    appId: '1:344163599580:ios:150452dea9e3043bd8a019',
    messagingSenderId: '344163599580',
    projectId: 'project-189f8',
    storageBucket: 'project-189f8.appspot.com',
    iosBundleId: 'com.example.kmunitySe.RunnerTests',
  );
}
