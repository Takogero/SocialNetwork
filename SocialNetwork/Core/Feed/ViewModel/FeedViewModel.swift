//
//  FeedViewModel.swift
//  SocialNetwork
//
//  Created by MacBookAir on 16.08.2024.
//

import Foundation
import Firebase

class FeedViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    init() {
        Task { try await fetchPost() }
    }
    
    @MainActor
    func fetchPost() async throws {
        let snapshot = try await Firestore.firestore().collection("posts").getDocuments()
        self.posts = try await PostSetvice.fetchFeedPosts()
    }
}
