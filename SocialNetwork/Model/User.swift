//
//  User.swift
//  SocialNetwork
//
//  Created by MacBookAir on 23.04.2024.
//

import Foundation
import Firebase

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else { return false }
        return currentUid == id
    }
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString,
              username: "Igor",
              profileImageUrl: "enot",
              fullname: "Igor enot",
              bio: "Gotham's Dark Knight",
              email: "igor@gmail.com"),
        
        .init(id: NSUUID().uuidString,
              username: "Bogdan",
              profileImageUrl: "gelik",
              fullname: "Bogdan Glas",
              bio: "SuperMen Life",
              email: "glas@gmail.com"),
        
        .init(id: NSUUID().uuidString,
              username: "Lena",
              profileImageUrl: "klasika",
              fullname: "Lena Abrosimova",
              bio: "Im love Usergam",
              email: "lento4ka@gmail.com"),
        
        .init(id: NSUUID().uuidString,
              username: "Anton",
              profileImageUrl: "jaguar",
              fullname: "Anton Abrosimov",
              bio: "Hello world",
              email: "1_aim@gmail.com"),
        
        .init(id: NSUUID().uuidString, 
              username: "Andre",
              profileImageUrl: "priora",
              fullname: nil,
              bio: "HardBass Forever",
              email: "priora@gmail.com"),
    ]
}
