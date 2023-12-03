//
//  FruitsAppApp.swift
//  FruitsApp
//
//  Created by Omar Abdulrahman on 29/11/2023.
//

import SwiftUI
import TipKit

@main
struct FruitsAppApp: App {
    
    //MARK: - PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var fruit = FruitOrderModel()

    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnBoardingView()
            } else {
                MainTabView().environmentObject(fruit)
                    .task {
                        try? Tips.resetDatastore()
                        try? Tips.configure([.datastoreLocation(.applicationDefault)])
                    }
            }
        }
    }
}
