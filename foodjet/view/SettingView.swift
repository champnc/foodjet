//
//  SettingView.swift
//  foodjet
//
//  Created by Natdanai Chaiyakan on 22/3/2565 BE.
//

import SwiftUI

struct SettingView: View {
    @State private var enableNotification = true
    @State private var enableDarkTheme = false
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Notifications settings")) {
                    Toggle(isOn: $enableNotification) {
                        Text("Notification:")
                    }
                }
                
                Section(header: Text("Theme setting")) {
                    Toggle(isOn: $enableDarkTheme) {
                        Text("Dark theme:")
                    }
                }
            }.navigationBarTitle(Text("Settings"))
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
