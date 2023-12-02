//
//  MainTabView.swift
//  FruitsApp
//
//  Created by Omar Abdulrahman on 30/11/2023.
//

import SwiftUI

struct MainTabView: View {
    
    // MARK: - PROPERTIES
   
    // MARK: - BODY

    var body: some View {
        TabView {
            FruitMainView()
                .tabItem { Label("Home", systemImage: "house") }
            
            SettingsView()
                .tabItem { Label("Settings", systemImage: "gear") }

        }
    }
}

// MARK: - PREVIEW
#Preview {
    MainTabView()
}
