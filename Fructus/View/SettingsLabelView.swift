//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Hưng Trần on 15/3/24.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK: - PROPERTIES
    var labelText: String
    var labelImage: String
    
    // MARK: -  BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    SettingsLabelView(labelText: "Fructus",labelImage: "info.circle")
}
