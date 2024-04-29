import 'package:flutter_test/flutter_test.dart';
import 'package:sfsafari_view_controller/sfsafari_view_controller.dart';
import 'package:sfsafari_view_controller/sfsafari_view_controller_platform_interface.dart';
import 'package:sfsafari_view_controller/sfsafari_view_controller_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSfsafariViewControllerPlatform
    with MockPlatformInterfaceMixin
    implements SfsafariViewControllerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<String?> openUrl(String url) {
    // TODO: implement openUrl
    throw UnimplementedError();
  }
}

void main() {
  final SfsafariViewControllerPlatform initialPlatform = SfsafariViewControllerPlatform.instance;

  test('$MethodChannelSfsafariViewController is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSfsafariViewController>());
  });

  test('getPlatformVersion', () async {
    SfsafariViewController sfsafariViewControllerPlugin = SfsafariViewController();
    MockSfsafariViewControllerPlatform fakePlatform = MockSfsafariViewControllerPlatform();
    SfsafariViewControllerPlatform.instance = fakePlatform;

    expect(await sfsafariViewControllerPlugin.getPlatformVersion(), '42');
  });
}
