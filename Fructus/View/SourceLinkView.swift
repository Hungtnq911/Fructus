//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Hưng Trần on 13/3/24.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox(){
            HStack{
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https:wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

#Preview (traits: .sizeThatFitsLayout){
    SourceLinkView()
}
