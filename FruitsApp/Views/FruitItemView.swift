//
//  FruitItemView.swift
//  FruitsApp
//
//  Created by Omar Abdulrahman on 30/11/2023.
//

import SwiftUI

struct FruitItemView: View {
    
    // MARK: - PROPERTIES
    var fruit: Fruit
    
    
    // MARK: - BODY
    var body: some View {
        VStack(spacing: 12) {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors),
                           startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
            

            Text(fruit.title)
                .font(.title3)
                .fontWeight(.regular)
                
        } //: VSTACK
        .padding(.top)
    } // : BODY
}


// MARK: - PREVIEW

#Preview {
    FruitItemView(fruit: fruitsData[2])
}
