//
//  MainTabView.swift
//  FruitsApp
//
//  Created by Omar Abdulrahman on 30/11/2023.
//

import SwiftUI

struct MainTabView: View {
    
    // MARK: - PROPERTIES
    @EnvironmentObject var order: FruitOrderModel

    // MARK: - BODY

    var body: some View {
        TabView {
            FruitMainView()
                .tabItem { Label("Home", systemImage: "house") }
            
            FruitCartView()
                .tabItem { Label("Cart", systemImage: "bag") }
                .badge(order.orders.count)

            
            SettingsView()
                .tabItem { Label("Settings", systemImage: "gear") }

        }
    }
}

// MARK: - PREVIEW
#Preview {
    MainTabView()
}
