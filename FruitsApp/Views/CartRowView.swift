//
//  CartrowView.swift
//  FruitsApp
//
//  Created by Omar Abdulrahman on 03/12/2023.
//

import SwiftUI

struct CartRowView: View {
    
    //MARK: - PROPERTIES
    var fruit: Fruit

    
    // MARK: - BODY
    var body: some View {
        HStack(spacing: 12) {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors),
                           startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 6) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
            } //: VSTACK
            
            Text("$\(fruit.price, specifier: "%.2f")")
                .foregroundStyle(.green)
                .bold()
                .padding(.leading)

        } //: HSTACK
    } // : BODY
}


// MARK: - PREVIEW
#Preview {
    CartRowView(fruit: fruitsData[0])
}
