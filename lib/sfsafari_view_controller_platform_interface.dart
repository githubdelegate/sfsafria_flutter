import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'sfsafari_view_controller_method_channel.dart';

abstract class SfsafariViewControllerPlatform extends PlatformInterface {
  /// Constructs a SfsafariViewControllerPlatform.
  SfsafariViewControllerPlatform() : super(token: _token);

  static final Object _token = Object();

  static SfsafariViewControllerPlatform _instance = MethodChannelSfsafariViewController();

  /// The default instance of [SfsafariViewControllerPlatform] to use.
  ///
  /// Defaults to [MethodChannelSfsafariViewController].
  static SfsafariViewControllerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SfsafariViewControllerPlatform] when
  /// they register themselves.
  static set instance(SfsafariViewControllerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> openUrl(String url) {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
