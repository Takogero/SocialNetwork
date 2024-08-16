//
//  ProfileView.swift
//  SocialNetwork
//
//  Created by MacBookAir on 20.04.2024.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    var body: some View {
       
            ScrollView {
                //header
                ProfileHeaderView(user: user)
                
                //post grid view
                PostGridView(user: user)
                
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User.MOCK_USERS[2])
    }
}
