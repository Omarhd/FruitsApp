//
//  FruitDetailsView.swift
//  FruitsApp
//
//  Created by Omar Abdulrahman on 30/11/2023.
//

import SwiftUI

struct FruitDetailsView: View {
    
    // MARK: - PROPERTIES
    var fruit: Fruit
   
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    
                    // MARK: - HEADER
                    FruitHeaderView(fruit: fruit)

                    VStack(alignment: .leading, spacing: 20) {
                        // MARK: - TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // MARK: - HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //  MARK: - NUTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        
                        //  MARK: - SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight (.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //  MARK: - DESCRIPTION
                        Text (fruit.description)
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.leading)
                        
                        //  MARK: - LINK
                        SourceLinkView(fruit: fruit)
                        
                    } //: VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } //: VSTACK

            } //: SCROLL VIEW
            .navigationBarTitle(fruit.title, displayMode: .inline)
            .navigationBarHidden(true)
            .edgesIgnoringSafeArea(.top)
            
        } //: NAVIGATION VIEW
    }
}

// MARK: - PREVIEW
#Preview {
    FruitDetailsView(fruit: fruitsData[2])
}
