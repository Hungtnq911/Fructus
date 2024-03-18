//
//  StartButtonView.swift
//  Fructus
//
//  Created by Hưng Trần on 06/03/2024.
//

import SwiftUI

struct StartButtonView: View {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    var body: some View {
        Button(action: {
            isOnboarding = false
        }, label: {
            HStack {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal,16)
            .padding(.vertical,10)
            .background(
                Capsule().strokeBorder(Color.white,lineWidth: 1.25))
        })
        .accentColor(Color.white)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    StartButtonView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        
}
