//
//  User.swift
//  Solid_Principles
//
//  Created by Bandish Kumar on 16/11/24.
//

import Foundation

struct User {
    let name: String
    let age: Int
    let gender: String
    
    init(name: String, age: Int, gender: String) {
        self.name = name
        self.age = age
        self.gender = gender
    }
}

///Before Applying SRP
///
class UserManager {
    func login(username: String, password: String) -> Bool {
        // Authentication logic
        return true
    }
    
    func fetchUserProfile(userId: String) -> User {
        // Fetch user profile logic
        return User(name: "test", age: 12, gender: "Male")
    }
}

///After Applying SRP

class AuthManager {
    func login(username: String, password: String) -> Bool {
        // Authentication logic
        return true
    }
}

class UserProfileManager {
    func fetchUserProfile(userId: String) -> User {
        // Fetch user profile logic
        return User(name: "test", age: 12, gender: "Male")
    }
}

///Now, the AuthManager class is responsible only for authentication
///the UserProfileManager class is responsible only for fetching user profiles.
///This makes the code easier to maintain and extend

