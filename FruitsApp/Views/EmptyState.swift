//
//  EmptyState.swift
//  FruitsApp
//
//  Created by Omar Abdulrahman on 03/12/2023.
//

import SwiftUI

struct EmptyState: View {
    
    //MARK: - PROPERTIES
    let imageName: String
    let message: String
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            VStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                    .foregroundColor(.green)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
            .offset(y: -50)
        }
    }
}

// MARK: - PREVIEW
#Preview {
    EmptyState(imageName: "handbag.circle", message: "This is our test message.\nI'm making it a little long for testing.")
}
