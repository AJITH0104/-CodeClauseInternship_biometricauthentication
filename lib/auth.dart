import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class auth {
  static final authen = LocalAuthentication();

  static Future<bool> canauthenticate() async {
    return await authen.canCheckBiometrics || await authen.isDeviceSupported();
  }

  static Future<bool> authenticate() async {
    try {
      if (!await canauthenticate()) return false;
      return await authen.authenticate(
          localizedReason: "get into the app",
          stickyAuth: true,
          biometricOnly: true);
    } on PlatformException catch (e) {
      print("error $e");
      return false;
    }
  }
}
