//
//  FruitsAppApp.swift
//  FruitsApp
//
//  Created by Omar Abdulrahman on 29/11/2023.
//

import SwiftUI

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
            }
        }
    }
}
