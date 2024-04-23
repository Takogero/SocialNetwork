//
//  IGTextFieldModifire.swift
//  SocialNetwork
//
//  Created by MacBookAir on 23.04.2024.
//

import Foundation
import SwiftUI

struct IGTextFieldModifire: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
}
