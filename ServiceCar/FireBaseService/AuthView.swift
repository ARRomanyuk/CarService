//
//  AuthView.swift
//  ServiceCar
//
//  Created by ARomanuk on 13.11.2022.
//

import Foundation
import FirebaseAuth


class AuthView {
  
    static let shared = AuthView()
    private init(){}
    
    var auth = Auth.auth()
    
    var currentUser: User? {
       return auth.currentUser
    }
    
    func singUp(email: String, passsword: String, complition: @escaping(Result<User, Error>) -> ()) {
        
        Auth.auth().createUser(withEmail: email, password: passsword) { result, error in
            
            if let result = result {
                complition(.success(result.user))
                print("Registration OK")
            } else if let error = error {
                complition(.failure(error))
                print("Registration Erorr")
            }
        }
    }
    
    func signIn(email: String, password: String, complition: @escaping(Result<User, Error>) -> ()) {
        
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            
            if let result = result {
                complition(.success(result.user))
                print("SingIn OK")
            } else if let error = error {
                complition(.failure(error))
                print("SingIn Error")
            }
        }
    }
}
