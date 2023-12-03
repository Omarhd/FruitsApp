//
//  FruitMainView.swift
//  FruitsApp
//
//  Created by Omar Abdulrahman on 30/11/2023.
//

import SwiftUI
import TipKit

struct FruitMainView: View {
    
    // MARK: - PROPERTIES
    @State private var isShowingDetailsView: Bool = false
    @State private var isGridViewActive: Bool = false
    var addColorTip = AddcolorTips()
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            VStack {
                // Toggle between grid and list views
                Group {
                    if isGridViewActive {
                        FruitGridView()
                            .listStyle(SidebarListStyle())
                    } else {
                        FruitListView()
                            .listStyle(SidebarListStyle())
                    }
                }
                .transition(.opacity) // Fade animation
            }
            .navigationBarItems(
                trailing: GridVOrListiewToggleButton(isActive: $isGridViewActive)
                    .popoverTip(addColorTip)
            )
            
        } // : NAVIGATION VIEW
    } // : BODY
}

#Preview {
    FruitMainView()
}
