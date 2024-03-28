//
//  LoginView.swift
//  LearningApp
//
//  Created by Saqib Adnan on 29/02/2024.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    //@EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                Spacer()
                    Text("")
                    .background(BackgroundView())
                
                    // image (logo)
                Text("Docode")
                    .fontWeight(.bold)
                    .font(.system(size: 70))
                        
                Spacer()
                    // form field
                    VStack  {
                        Input(text: $email, title: "Email Address", placeholder: "name@example.com")
                            .autocapitalization(.none)
                            
                        Input(text: $password, title: "Password", placeholder: "Enter your password")
                    }
                    .padding(.horizontal)
                
                    //sign in button
                    Button(action: {
                        Task {
                            //try await viewModel.signIn(withEmail: email, password:password)
                        }
                    }, label: {
                        HStack {
                            Text("SIGN IN")
                                .fontWeight(.semibold)
                        }
                        .foregroundColor(.white)
                        .frame(width: UIScreen.main.bounds.width - 32, height: 52)
                    })
                    .background(Color(.orange))
                    .cornerRadius(10)
                    .padding(.top, 30)
                        
                Spacer()
                    //sign up button
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 3) {
                        Text("Don't have an account?")
                            .foregroundColor(.black)
                        Text("Sign up")
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 14))
                }

                }
                .navigationViewStyle(.stack)
        } else {
            // Fallback on earlier versions
        }
    }
}

#Preview {
    LoginView()
}
