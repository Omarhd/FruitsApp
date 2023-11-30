//
//  FruitMainView.swift
//  FruitsApp
//
//  Created by Omar Abdulrahman on 30/11/2023.
//

import SwiftUI

struct FruitMainView: View {
    
    // MARK: - PROPERTIES
    @State private var isShowingDetailsView: Bool = false
    @State private var isGridViewActive: Bool = true
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            VStack {
                // Toggle between grid and list views
                Group {
                    if isGridViewActive {
                        FruitGridView()
                    } else {
                        FruitListView()
                    }
                }
                .transition(.opacity) // Fade animation
            }
            .navigationBarItems(
                trailing: GridVOrListiewToggleButton(isActive: $isGridViewActive)
            )
            
        } // : NAVIGATION VIEW
    } // : BODY
}

#Preview {
    FruitMainView()
}
