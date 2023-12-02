//
//  FruitCartView.swift
//  FruitsApp
//
//  Created by Omar Abdulrahman on 03/12/2023.
//

import SwiftUI

struct FruitCartView: View {
    
    // MARK: - PROPERTIES
    @EnvironmentObject var order: FruitOrderModel

    
    // MARK: - BODY

    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.orders) { fruit in
                            CartRowView(fruit: fruit)
                        }
                        .onDelete(perform: order.deleteItem)
                    }
                    .listStyle(.plain)
                    
                    Button {
                        
                    } label: {
                        Text("$\(order.totalPrice, specifier: "%.2f") - Confirm")
                    }
                    .frame(width: 260, height: 50)
                    .background(.green)
                    .foregroundColor(.white)
                    .cornerRadius(12)
                    .padding(.bottom, 30)
                }
                if order.orders.isEmpty {
                    EmptyState(imageName: "bag.circle", message: "yoy don't have any items yet \n please add some items first")
                }
            }
            .navigationTitle("🧾 Cart")
        }
    }
}


// MARK: - PREVIEW

#Preview {
    FruitCartView()
}
