import SwiftUI

struct SettingsView: View {
    @AppStorage("difficulty") private var difficulty: Int = 0
    @AppStorage("language") private var language: String = "en"
    @AppStorage("themeChosen") private var themeChosen: Int = 1 // 0 = Dark, 1 = Light
    
    var body: some View {
        NavigationView {
            Form {
                // Difficulty Picker
                Section(header: Text("Difficulty")) {
                    Picker("Difficulty", selection: $difficulty) {
                        Text("Easy").tag(0)
                        Text("Medium").tag(1)
                        Text("Hard").tag(2)
                    }
                    .pickerStyle(.segmented)
                }
                
                // Language Picker
                Section(header: Text("Language")) {
                    Picker("Language", selection: $language) {
                        Text("English").tag("en")
                        Text("Vietnamese").tag("vi")
                    }
                }
                
                // Theme Toggle
                Section(header: Text("Theme")) {
                    Picker("Theme", selection: $themeChosen) {
                        Text("Dark").tag(0)
                        Text("Light").tag(1)
                    }
                    .pickerStyle(.segmented)
                }
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    SettingsView()
}
