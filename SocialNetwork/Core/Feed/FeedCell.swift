//
//  FeedCell.swift
//  SocialNetwork
//
//  Created by MacBookAir on 22.04.2024.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack {
            //image + username
            HStack {
                Image("enot")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 36, height: 36)
                    .clipShape(Circle())
                
                Text("Igor")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Spacer()
            }
            .padding(.leading, 8)
            
            //posts image
            
            Image("enot")
                .resizable()
                .scaledToFit()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            //action buttons
            HStack(spacing: 16) {
                Button {
                    print("like post")
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                
                    Button {
                        print("Coment on post")
                    } label: {
                        Image(systemName: "bubble.right")
                            .imageScale(.large)
                    }
                
                        Button {
                            print("like post")
                        } label: {
                            Image(systemName: "paperplane")
                                .imageScale(.large)
                        }
                Spacer()
                }
            .padding(.leading, 8)
            .padding(.top, 4)
            .foregroundColor(.black)
            //likes label
            Text("23 likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
            
            //caption label
            HStack {
                Text("Igor").fontWeight(.semibold) +
                Text("This is some test caprion for now this is some test caption")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.footnote)
            .padding(.leading, 10)
            .padding(.top, 1)
            
            Text("6h ago")
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.footnote)
            .padding(.leading, 10)
            .padding(.top, 1)
            .foregroundColor(.gray)
        }
    }
}

#Preview {
    FeedCell()
}
