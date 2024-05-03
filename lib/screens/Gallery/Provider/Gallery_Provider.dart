import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

class GalleryProvider extends ChangeNotifier {
  final auth = LocalAuthentication();

  Future<bool> check_Fingure_Print() async {
    bool isSupported = await auth.isDeviceSupported();
    bool isActive = await auth.canCheckBiometrics;

    if(isSupported && isActive){
      return auth.authenticate(localizedReason: 'Scan you Fingure Print');
    }
    else{
      log('Scan Successfull');
    }

    return false;
  }
}
