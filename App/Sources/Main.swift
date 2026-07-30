import UIKit
import WebKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {

        let window = UIWindow(frame: UIScreen.main.bounds)
        let vc = UIViewController()

        let webView = WKWebView(frame: vc.view.bounds)
        webView.autoresizingMask = [.flexibleWidth, .flexibleHeight]

        let url = URL(string: "https://rewards.bing.com/dashboard")!
        webView.load(URLRequest(url: url))

        vc.view.addSubview(webView)

        window.rootViewController = vc
        window.makeKeyAndVisible()
        self.window = window

        return true
    }
}
