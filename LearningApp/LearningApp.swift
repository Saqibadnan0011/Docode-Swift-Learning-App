//
//  Docode-LearningApp.swift
//  Docode-LearningApp
//
//  Created by Saqib Adnan on 01/01/2024.
//

import SwiftUI

@main
struct LearningApp: App {
    
    @State private var isOnboardingDone: Bool = false
    @State private var isLoggedIn: Bool = false
    
    var body: some Scene {
        WindowGroup {
            if isOnboardingDone && isLoggedIn {
                HomeView()
                    .environmentObject(ContentModel())
            } else if !isOnboardingDone {
                Onboarding(done: $isOnboardingDone)
            } else {
                LoginView()
            }
            //HomeView()
        }
    }
}
