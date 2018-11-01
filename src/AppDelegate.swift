
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate
{

    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?
    ) -> Bool {
        // Create window.
        self.window = UIWindow(frame: UIScreen.main.bounds)

        // Setup VC.
        let vc = UIViewController()
        vc.view.backgroundColor = .red
        self.window?.rootViewController = vc

        // Display window.
        self.window?.backgroundColor = UIColor.white
        self.window?.makeKeyAndVisible()
        return true
    }

}

