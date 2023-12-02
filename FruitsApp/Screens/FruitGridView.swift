//
//  FruitGridView.swift
//  FruitsApp
//
//  Created by Omar Abdulrahman on 30/11/2023.
//

import SwiftUI

struct FruitGridView: View {
    
    // MARK: - PROPERTIES
    @State private var selectedFruit: Fruit? = nil
    
    var fruits: [Fruit] = fruitsData
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(fruits.shuffled()) { fruit in
                        NavigationLink(destination: FruitDetailsView(fruit: fruit)) {
                            FruitItemView(fruit: fruit)
                        }
                    }
                }
            }
            .scrollIndicators(.hidden)
            .navigationTitle("🧩 Grid")
        }
    }
}


#Preview {
    FruitGridView()
}
