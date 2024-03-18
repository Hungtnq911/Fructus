//
//  ContentView.swift
//  Fructus
//
//  Created by Hưng Trần on 06/03/2024.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    
    @State private var isShowingSettings: Bool = false

    
    var fruits: [Fruit] = fruitsData
    
    
    // MARK: - Body
    var body: some View {
        NavigationStack{
            List{
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical,4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .toolbar{
                ToolbarItem(placement: .topBarTrailing){
                    Button("Change View",systemImage: "slider.horizontal.3",action:{
                        isShowingSettings = true
                    })
                    .sheet(isPresented: $isShowingSettings, content: {
                        SettingView()
                    })
                }
            }
        }//: NAVIGATION
        
    }
}

#Preview {
    ContentView()
}
