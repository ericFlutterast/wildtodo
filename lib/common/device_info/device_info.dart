import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';

class DeviceInfo {
  DeviceInfo._() {
    _deviceInfoPlugin = DeviceInfoPlugin();
  }

  late final DeviceInfoPlugin _deviceInfoPlugin;

  static DeviceInfo init = DeviceInfo._();

  DeviceInfoPlugin get deviceInfoPlugin => _deviceInfoPlugin;

  Future<String?> get userAgent async {
    return (await _deviceInfoPlugin.webBrowserInfo).userAgent;
  }

  Future<String?> fingerPrint() async {
    if (Platform.isIOS) {
      return (await _deviceInfoPlugin.iosInfo).identifierForVendor;
    } else if (Platform.isAndroid) {
      return (await _deviceInfoPlugin.androidInfo).id;
    }

    return null;
  }
}
