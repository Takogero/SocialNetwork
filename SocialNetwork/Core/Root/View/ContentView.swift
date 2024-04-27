//
//  ContentView.swift
//  SocialNetwork
//
//  Created by MacBookAir on 20.04.2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    var body: some View {
        Group {
            if viewModel.userSession == nil {
                LoginView()
            } else {
                MainTabView()
            }
        }

    }
}

#Preview {
    ContentView()
}
