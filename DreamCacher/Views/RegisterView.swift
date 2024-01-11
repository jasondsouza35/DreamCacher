//
//  RegisterView.swift
//  DreamCacher
//
//  Created by Jason D'Souza on 2024-01-04.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        NavigationView { 
            VStack {
                // Header
                HeaderView(title: "Register Now",
                           subtitle: "Start journaling your dreams",
                           angle: -10,
                           background: .pink)
                Spacer()
                
                // Register Account
                Form {
                    TextField("Full Name", text: $viewModel.name)
                        .padding(.top)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                    TextField("Email", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    DCButton(title: "Create Account", background: Color.green) {
                        // Attempt registration
                        viewModel.register()
                    }
                        .padding()
                }
                .scrollContentBackground(.hidden)
                .offset(y: -50)
                
            }
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
