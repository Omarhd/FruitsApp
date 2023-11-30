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
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailsView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 2)
                        
                    } // : NAVIGATIONLINK
                } // : FOREACH
            } // : LIST
            .scrollIndicators(.hidden)
            .navigationTitle("🧾 List")
    }
}

#Preview {
    FruitListView()
}
