import SwiftUI

@main
struct ContentView: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            EmptyView()
        }
    }
}
