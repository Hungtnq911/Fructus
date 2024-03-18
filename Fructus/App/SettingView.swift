//
//  SettingView.swift
//  Fructus
//
//  Created by Hưng Trần on 15/3/24.
//

import SwiftUI

struct SettingView: View {
    //MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    //MARK: - BODY
    var body: some View {
        NavigationStack{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20){
                    //MARK: - SECTION 1
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                            
                    ){
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80,height: 80)
                                .clipShape(RoundedRectangle(cornerRadius: 9))
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. non have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                        
                        
                    }
                    
                    //MARK: - SECTION 2
                    GroupBox(
                        label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                        
                    ){
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical,8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                        Toggle(isOn: $isOnboarding){
                            Text("Restart".uppercased())
                                .fontWeight(.bold)
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8,style: .continuous))
                        )
                    }
                    
                    //MARK: - SECTION 3
                GroupBox(
                    label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                ){
                    SettingsRowView(name: "Developer", content: "Hung T.N.Q")
                    SettingsRowView(name: "Designer", content: "Robert Petras")
                    SettingsRowView(name: "Website",linkLabel: "Some Website", LinkDestination: "google.com")
                    SettingsRowView(name: "Contact",linkLabel: "FaceBook",LinkDestination: "fb.com/HungTran911")
                    SettingsRowView(name: "Compatibility",content: "iOS 17")
                    SettingsRowView(name: "SwiftUI", content: "2.0")
                    SettingsRowView(name: "Version", content: "1.1.0")
                }
                    
                    
                    
                }//: VStack
                .navigationTitle(Text("Settings"))
                .toolbar{
                    ToolbarItem(placement: .topBarTrailing){
                        Button("Change View",systemImage: "xmark", action: {
                            presentationMode.wrappedValue.dismiss()
                        })
                    }
                }
                .padding()
            }//: Scroll
        }//: NavigationView
    }
}

#Preview {
    SettingView()
}
