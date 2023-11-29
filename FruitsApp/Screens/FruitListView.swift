//
//  ContentView.swift
//  FruitsApp
//
//  Created by Omar Abdulrahman on 29/11/2023.
//

import SwiftUI

struct FruitListView: View {
    
    // MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    FruitRowView(fruit: fruit)
                        .padding(.vertical, 2)
                        .onTapGesture {
                            withAnimation {
                                print(fruit.title)
                            }
                        }
                } // : FOREACH
            } // : LIST
            .navigationTitle("🫐 Fruits")
        } // : NAVIGATION VIEW
    }
}

#Preview {
    FruitListView()
}
