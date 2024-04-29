import Flutter
import UIKit
import JKSwiftExtension
import SafariServices

public class SfsafariViewControllerPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "sfsafari_view_controller", binaryMessenger: registrar.messenger())
    let instance = SfsafariViewControllerPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("iOS " + UIDevice.current.systemVersion)
     case "open":
        if let maps =  call.arguments as? [String: Any], let str = maps["url"] as? String, let url = URL(string: str) {
            DispatchQueue.main.async {
                let svc = SFSafariViewController(url: url)
                UIViewController.jk.topViewController()?.present(svc, animated: true, completion: nil)
                result("")
            }
        } else {
            result("")
        }
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
