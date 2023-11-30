//
//  SourceLinkView.swift
//  FruitsApp
//
//  Created by Omar Abdulrahman on 30/11/2023.
//

import SwiftUI

struct SourceLinkView: View {
    
    //MARK: - PROPERTIES
    var fruit: Fruit

    
    // MARK: - BODY
    var body: some View {
        GroupBox {
            HStack {
                Text("Content source")
                    .fontWeight(.semibold)
                
                Spacer()
                
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                
                Image(systemName: "arrow.up.right.square")
            } // : HSTACK
            .font(.footnote)
        } // : GROP BOX
        .padding (.top, 10)
        .padding(.bottom, 40)
    } // : BODY
}

// MARK: - PREVIEW
#Preview {
    SourceLinkView(fruit: fruitsData[2])
}
