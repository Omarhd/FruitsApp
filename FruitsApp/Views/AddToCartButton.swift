//
//  AddToCartButton.swift
//  FruitsApp
//
//  Created by Omar Abdulrahman on 03/12/2023.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    
    //MARK: - PROPERTIES
    var fruit: Fruit

    
    // MARK: - BODY

    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .foregroundColor(fruit.gradientColors[1])
            .controlSize(.regular)
    }
}

extension View {
    func standardButtonStyle() -> some View {
        self.modifier(StandardButtonStyle(fruit: fruitsData[0]))
    }
}
