//
//  FruitOrderModel.swift
//  FruitsApp
//
//  Created by Omar Abdulrahman on 03/12/2023.
//

import SwiftUI

final class FruitOrderModel: ObservableObject {
 
    @Published var orders: [Fruit] = []
    
    var totalPrice: Double {
        orders.reduce(0) { $0 + $1.price }
    }
    
    func add(_ fruit: Fruit) {
        orders.append(fruit)
    }
    
    func deleteItem(at offSet: IndexSet) {
        orders.remove(atOffsets: offSet)
    }

}
