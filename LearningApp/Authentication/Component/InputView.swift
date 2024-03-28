//
//  InputView.swift
//  LearningApp
//
//  Created by Saqib Adnan on 29/02/2024.
//

import SwiftUI

struct Input: View {
    
    @Binding var text: String
    let title: String
    let placeholder: String
    let isSecureField = false
    
    var body: some View {
        VStack (alignment: .leading, spacing: 20) {
            Text(title)
                .fontWeight(.semibold)
                .font(.footnote)
            
            if isSecureField {
                SecureField (placeholder, text: $text)
                    .font(.system(size: 14))
            } else {
                TextField( placeholder, text: $text)
                    .font(.system(size: 14))
            }
            
            Divider()
        }
    }
}

#Preview {
    Input(text: .constant(""), title: "Email Address", placeholder: "name@example.com")
}
