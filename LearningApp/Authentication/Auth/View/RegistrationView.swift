//
//  RegistrationView.swift
//  LearningApp
//
//  Created by Saqib Adnan on 29/02/2024.
//

import SwiftUI

@available(iOS 15.0, *)
struct RegistrationView: View {
    
    @State private var email = ""
    @State private var fullname = ""
    @State private var password = ""
    @State private var confirmpassword = ""
    @Environment(\.dismiss) var dismiss
    //@EnvironmentObject var viewModel: AuthViewModel
    
    
    var body: some View {
        VStack {
            Spacer()
            Text("")
                .background(BackgroundView())
            
           Text("Docode")
               .fontWeight(.bold)
               .font(.system(size: 70))
                
            
            
            Spacer()
        // form field
        VStack  {
            Input(text: $email, title: "Email Address", placeholder: "name@example.com")
                .autocapitalization(.none)
            
            Input(text: $fullname, title: "Enter your name", placeholder: "name@example.com")
            
            Input(text: $password, title: "Password", placeholder: "Enter your password")
            
            Input(text: $confirmpassword, title: "Confirm Password", placeholder: "Confirm password")
        }
        .padding(.horizontal)
            
            //sign up button
            Button(action: {
                Task {
                    //try await viewModel.createUser(
                        //withEmail: email,
                       // password: password,
                       // fullname: fullname)
                }
            }, label: {
                HStack {
                    Text("SIGN UP")
                        .fontWeight(.semibold)
                }
                .foregroundColor(.white)
                .frame(width: UIScreen.main.bounds.width - 32, height: 52)
            })
            .background(Color(.orange))
            .cornerRadius(10)
            .padding(.top, 20)
            
            Spacer()
            
            Button(action: {
                dismiss()
            }, label: {
                HStack(spacing: 3) {
                    Text("Already have an account?")
                        .foregroundColor(.black)
                    Text("Sign in")
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                }
                .font(.system(size: 14))
            })
    }
    }
}


