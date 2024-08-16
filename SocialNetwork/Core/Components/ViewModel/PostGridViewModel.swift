//
//  PostGridViewModel.swift
//  SocialNetwork
//
//  Created by MacBookAir on 16.08.2024.
//

import Foundation

class PostGridViewModel: ObservableObject {
    private let user: User
    @Published var posts = [Post]()
    
    init(user: User) {
        self.user = user
        
        Task {try await fetchUserPosts() }
    }
    
    @MainActor
    func fetchUserPosts() async throws {
        self.posts = try await PostSetvice.fetchUserPosts(uid: user.id)
        
        for i in 0 ..< posts.count {
            posts[i].user = self.user
        }
    }
}
