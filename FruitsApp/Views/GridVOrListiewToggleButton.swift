//
//  GridVOrListiewToggleButton.swift
//  FruitsApp
//
//  Created by Omar Abdulrahman on 30/11/2023.
//

import SwiftUI

struct GridVOrListiewToggleButton: View {
    
    //MARK: - PROPERTIES
    @Binding var isActive: Bool
    var addColorTip = AddcolorTips()

    // MARK: - BODY
    var body: some View {
        Button(action: {
            isActive.toggle()
            addColorTip.invalidate(reason: .actionPerformed)
        }) {
            Image(systemName: isActive ? "list.bullet" : "square.grid.2x2.fill")
        }
    }
}


// MARK: - PREVIEW
#Preview {
    GridVOrListiewToggleButton(isActive: .constant(true))
}
