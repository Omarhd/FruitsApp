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
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical,
                       showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    // MARK: - SECTION 1
                    GroupBox(label: ProfileLabelView(userName: "Omar Abdulrahman", phoneNumber: "+971544420853")) {
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
                                .frame (width: 80, height: 80)
                                .cornerRadius (9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    // MARK: - SECTION 3
                    
                    GroupBox(label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush"))
                    {
                        Divider().padding(. vertical, 4)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment (.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            Text("Restart".uppercased())
                        }
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground)
                            .clipShape(RoundedRectangle(cornerRadius: 8,
                                                        style: .continuous)))
                    }
                }
                
                // MARK: - SECTION 4
                
                GroupBox( label: SettingsLabelView(labelText: "Allication",
                                                   labelImage: "apps.iphone")) {
                    
                    SettingsRowView(name:
                                        "Developer", content: "John / Jane")
                    
                    SettingsRowView(name:
                                        "Designer", content: "Robert Petras")
                    
                    SettingsRowView(name: "Compatibility", content: "iOS 14", linkDestination: "swiftuimasterclass.com")
                    
                    SettingsRowView(name:
                                        "Twitter", linkLabel: "itsSwiftGuy", linkDestination: "twitter.com/itsSwiftGuy")
                    
                    SettingsRowView(name: "SwiftUI", content: "2.0")
                    
                    SettingsRowView(name: "Version", content: "1.1.0")
                }
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

// MARK: - PREVIEW
#Preview {
    SettingsView()
}
