//
//  BackgroundView.swift
//  LearningApp
//
//  Created by Saqib Adnan on 29/02/2024.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        ZStack {
            Image("Spline")
                .scaledToFit()
                .blur(radius: 30)
        }
        .ignoresSafeArea(.all)
    }
}

#Preview {
    BackgroundView()
}
