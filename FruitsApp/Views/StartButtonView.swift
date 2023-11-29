//
//  StartButtonView.swift
//  FruitsApp
//
//  Created by Omar Abdulrahman on 29/11/2023.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    var fuitData: [Fruit] = fruitsData
    
    // MARK: - BODY
    
    var body: some View {
        Button(action: {
            isOnboarding = false
        })
        {
            HStack (spacing: 8) {
                Text(setTitleText(fruit: fruitsData))
                Image(systemName:"arrow.right.circle")
                    .imageScale(.large)
                
            } //: HSTACK
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder (.white, lineWidth: 1.25)
            )
        } // : BUTTON
        .accentColor(.white)
    }
    
    func setTitleText(fruit: [Fruit]) -> String {
        if (fruit.last != nil) {
            return "Start"
        } else {
            return "Next"
        }
    }
}

#Preview {
    StartButtonView()
}
