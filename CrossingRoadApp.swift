import SwiftUI

@main
struct CrossingRoadApp: App {
    @AppStorage("themeChosen") private var themeChosen: Int = 1
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(themeChosen == 0 ? .dark : .light)
        }
    }
}
