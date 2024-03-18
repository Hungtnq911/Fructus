//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Hưng Trần on 13/3/24.
//

import SwiftUI

struct FruitNutrientsView: View {
    //MARK: - PROPERTIES
    var fruit: Fruit
    let nutrients: [String] = ["Energy","Sugar","Fat","Protein","Vitamins","Minerals"]
    
    //MARK: -BODY
    var body: some View {
        GroupBox{
            DisclosureGroup("Nutritional value per 100g"){
                ForEach(0 ..< nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical,2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                            
                        }
                        .foregroundStyle(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                    
                }
            }
        }
    }
}

#Preview {
    FruitNutrientsView(fruit: fruitsData[5])
}
