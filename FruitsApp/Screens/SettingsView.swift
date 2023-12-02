//
//  SettingsView.swift
//  FruitsApp
//
//  Created by Omar Abdulrahman on 30/11/2023.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @State private var isPresentingProfileView: Bool = false
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical,
                       showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    // MARK: - SECTION 1
                    GroupBox(label:
                                ProfileLabelView(userName: "Omar Abdulrahman", phoneNumber: "+971544420853")) {
                    }
                                .onTapGesture {
                                    isPresentingProfileView = true
                                }
                    
                    // MARK: - SECTION 2
                    
                    GroupBox( label: SettingsLabelView(labelText: "Fructus",
                                                       labelImage: "info.circle")) {
                        
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame (width: 80, height:
                                            80)
                                .cornerRadius (9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    // MARK: - SECTION 3
                    
                    // MARK: - SECTION 4
                    
                } //: VSTACK
                .padding()
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .sheet(isPresented: $isPresentingProfileView, content: {
                    ProfileView()
                })
            }
        }
    }
}

// MARK: - PREVIEW
#Preview {
    SettingsView()
}
