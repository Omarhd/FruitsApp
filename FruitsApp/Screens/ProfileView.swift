//
//  ProfileView.swift
//  FruitsApp
//
//  Created by Omar Abdulrahman on 30/11/2023.
//

import SwiftUI

struct ProfileView: View {
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    VStack(alignment: .leading) {
                        Image(systemName: "person.circle.fill") // Replace with your image name
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width: 100, height: 100)
                            .padding(.bottom, 10)
                        
                        Text("Username")
                            .font(.headline)
                            .padding(.bottom, 5)
                        
                        Text("Full Name")
                            .foregroundColor(.gray)
                            .padding(.bottom, 10)
                        
                        Text("Status: Available")
                            .foregroundColor(.green)
                            .font(.subheadline)
                            .padding(.bottom, 10)
                    }
                }
                
                            
                Section(header: Text("Contact")) {
                    Text("Phone Number: +1234567890")
                    Text("Email: user@example.com")
                }
                
                Section(header: Text("About")) {
                    Text("This is my bio or about me section. I can write a brief description about myself.")
                        .multilineTextAlignment(.leading)
                        .lineLimit(nil)
                }
                
//                Section(header: Text("Shared Media")) {
//                    // Add your shared media components here
//                }
                
            }
            .scrollIndicators(.hidden)
            .navigationBarTitle("Profile")
        }
    }
}

#Preview {
    ProfileView()
}
