
import 'sfsafari_view_controller_platform_interface.dart';

class SfsafariViewController {
  Future<String?> getPlatformVersion() {
    return SfsafariViewControllerPlatform.instance.getPlatformVersion();
  }

  static Future<String?> openUrl(String url) {
    return SfsafariViewControllerPlatform.instance.openUrl(url);
  }
}
