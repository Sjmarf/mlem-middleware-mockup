//
//  ExpandedPostView.swift
//  mlem middleware mockup
//
//  Created by Sjmarf on 12/10/2023.
//

import SwiftUI

struct ExpandedPostView: View {
    let post: PostModel
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(post.title)
                    .font(.title)
                Divider()
                Text(post.body)
                Divider()
                HStack {
                    upvoteButton
                    Spacer()
                    banButton
                }
            }
        }
        .padding()
        .navigationBarTitleDisplayMode(.inline)
    }
    
    @ViewBuilder
    var upvoteButton: some View {
        Button {
            post.upvoted.toggle()
        } label: {
            Label("Upvote", systemImage: "arrow.up")
                .foregroundStyle(post.upvoted ? .blue : .secondary)
        }
    }
    
    @ViewBuilder
    var banButton: some View {
        Button {
            post.creator.banned.toggle()
        } label: {
            Label("Ban \(post.creator.name)", systemImage: "xmark.circle.fill")
                .foregroundStyle(post.creator.banned ? .red : .secondary)
        }
    }
}
