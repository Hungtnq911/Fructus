//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Hưng Trần on 15/3/24.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK: - PROPERTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var LinkDestination: String? = nil
    
    //MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack{
                Text(name).foregroundStyle(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if(linkLabel != nil && LinkDestination != nil){
                    Link(linkLabel!,destination: URL(string:"https://\(LinkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundStyle(Color.pink)
                } else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }
        }
        
    }
}

#Preview {
    SettingsRowView(name:"Website",linkLabel: "SwiftUI Masterclass", LinkDestination: "swiftuimasterclass.com")
}
