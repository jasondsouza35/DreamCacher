//
//  LoginViewViewModel.swift
//  DreamCacher
//
//  Created by Jason D'Souza on 2024-01-04.
//

import Foundation
import FirebaseAuth

class LoginViewViewModel: ObservableObject {
        
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var errorMessage = ""
    
    init () {}
    
    func login() {
        guard validate() else {
            return
        }
        
        // Try to log in
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            
            errorMessage = "Please fill in all fields."
            return false
        }
        
        // email@foo.com
        guard email.contains("@") && email.contains(".") else {
            
            errorMessage = "Please enter valid email."
            return false
        }
        
        return true
    }
}
