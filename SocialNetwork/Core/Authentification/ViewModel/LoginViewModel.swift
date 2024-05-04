//
//  LoginViewModel.swift
//  SocialNetwork
//
//  Created by MacBookAir on 04.05.2024.
//

import Foundation
 
class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func signIn() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
