//
//  ProfileView.swift
//  FruitsApp
//
//  Created by Omar Abdulrahman on 30/11/2023.
//

import SwiftUI

struct ProfileLabelView: View {
    
    //MARK: - PROPERTIES
    var userName: String
    var phoneNumber: String
        
    // MARK: - BODY
    var body: some View {
        HStack {
            ZStack {
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.purple, Color.orange]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 70, height: 70)
                    .padding(4) // Padding between the image and the circle
                
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                    .padding(2)
            }
            
            VStack(alignment: .leading, spacing: 8) {
                
                Text(userName)
                    .font(.headline)
                
                Text(phoneNumber)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .bold()
                
            } // : VSTACK
            .frame(minWidth: 200, maxHeight: 200)
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "qrcode")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .padding(.bottom, 25)
            }
        }
    }
}

// MARK: - PREVIEW

#Preview {
    ProfileLabelView(userName: "Omar Abdulrahman", phoneNumber: "+971544420853")
}
