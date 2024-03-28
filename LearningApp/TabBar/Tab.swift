//
//  Tab.swift
//  LearningApp
//
//  Created by Saqib Adnan on 03/03/2024.
//

import SwiftUI

@available (iOS 17.0, *)
struct Tab: View {
    var body: some View {
        TabView {
            ZStack {
                VStack {
                    Spacer()
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(.purple)
                        .opacity(0.4)
                        .frame(width: 360, height: 72)
                        .padding(.bottom, 25)
                }
                .ignoresSafeArea()
            }
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
            Text("Profile")
            //HomeView()
            .tabItem {
                Image(systemName: "person.crop.circle.fill")
                Text("Profile")
                
            }
        }
    }
}

@available (iOS 17.0, *)
#Preview {
    Tab()
}
