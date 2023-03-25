import UIKit
import ParseSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        ParseSwift.initialize(applicationId: "ev4Q0pAu3b9cPKmJlW6QIUPoyhigulOJMX4sft1R",
                              clientKey: "vhClwfcR9rygMV4QgejUolyOfybaSFbwwPAaxCik",
                              serverURL: URL(string: "https://parseapi.back4app.com")!)
        return true
    }

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    }
}
