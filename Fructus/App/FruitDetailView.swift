//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Hưng Trần on 13/3/24.
//

import SwiftUI

struct FruitDetailView: View {
    // MARK: - Properties
    var fruit: Fruit
    
    // MARK: - Body
    var body: some View {
        //NavigationStack{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,spacing: 20){
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading,spacing: 20) {
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundStyle(fruit.gradientColors[1])
                        
                        // HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        // NUTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        // SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(fruit.gradientColors[1])
                        // DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                        // LINK
                        SourceLinkView()
                            .padding(.top,10)
                            .padding(.bottom,40)
                    } //: VSTACK
                    .padding(.horizontal,20)
                    .frame(maxWidth: 640, alignment: .center)
                } //: VSTACK
            }//:Scroll
            .ignoresSafeArea(edges: .top)
            
        
        //}//: NAVIGATION
    }
}

#Preview {
    FruitDetailView(fruit: fruitsData[0])
}
