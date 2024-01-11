//
//  LoginView.swift
//  DreamCacher
//
//  Created by Jason D'Souza on 2024-01-04.
//

import SwiftUI

struct LoginView: View {
     
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                
                // Header
                HeaderView(title: "Dream Cacher",
                           subtitle: "Your Dream Journal",
                           angle: 15,
                           background: .purple)
                
                // Login Form
                Form {
                    
                    // Login error message
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    // Login form contents
                    TextField("Email Address", text: $viewModel.email)
                        .padding(.top)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    // Log in submit button
                    DCButton(title: "Log In", background: Color.blue) {
                        viewModel.login()
                    }
                        .padding()
                    
                }
                .scrollContentBackground(.hidden)
                .offset(y: -50)
                
                // Create Account
                VStack {
                    Text("New around here?")
                    NavigationLink("Create An Account",
                                   destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct Previews_LoginView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
