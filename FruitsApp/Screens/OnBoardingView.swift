//
//  OnBoardingView.swift
//  FruitsApp
//
//  Created by Omar Abdulrahman on 29/11/2023.
//

import SwiftUI

struct OnBoardingView: View {
    
    //MARK: - PROPERTIES
    var fruitData: [Fruit] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(fruitData) { fruit in
                FruitCardView(fruit: fruit)
            }
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

#Preview {
    OnBoardingView(fruitData: fruitsData)
}
