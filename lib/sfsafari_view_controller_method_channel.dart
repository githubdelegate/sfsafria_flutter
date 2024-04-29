import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'sfsafari_view_controller_platform_interface.dart';

/// An implementation of [SfsafariViewControllerPlatform] that uses method channels.
class MethodChannelSfsafariViewController extends SfsafariViewControllerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('sfsafari_view_controller');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }


  @override
  Future<String?> openUrl(String url) async {
    final version = await methodChannel.invokeMethod<String>('open', {"url": url});
    return version;
  }

}
