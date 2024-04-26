//
//  Post.swift
//  SocialNetwork
//
//  Created by MacBookAir on 26.04.2024.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Date
    var user: User?
}
extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "Wakanda Forever",
              likes: 103,
              imageUrl: "kit.black",
              timestamp: Date(),
              user: User.MOCK_USERS[0]
             ),
        
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "SuperMen Life",
              likes: 1002,
              imageUrl: "gelik",
              timestamp: Date(),
              user: User.MOCK_USERS[3]
             ),
        
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "Im love Usergam",
              likes: 192,
              imageUrl: "klasika",
              timestamp: Date(),
              user: User.MOCK_USERS[2]
             ),
        
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "Hello world",
              likes: 1013,
              imageUrl: "jaguar",
              timestamp: Date(),
              user: User.MOCK_USERS[1]
             ),
        
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "HardBass Forever",
              likes: 1037,
              imageUrl: "priora",
              timestamp: Date(),
              user: User.MOCK_USERS[2]
             ),
        ]
}
