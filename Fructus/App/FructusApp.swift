//
//  FructusApp.swift
//  Fructus
//
//  Created by Hưng Trần on 06/03/2024.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardingView()
            }else{
                ContentView()
            }
            
        }
    }
}
