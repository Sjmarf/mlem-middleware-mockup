//
//  ContentView.swift
//  mlem middleware mockup
//
//  Created by Sjmarf on 12/10/2023.
//

import SwiftUI

struct FeedView: View {
    let tracker: Tracker<PostModel> = .init()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(tracker.items, id: \.id) { post in
                    NavigationLink {
                        ExpandedPostView(post: post)
                    } label: {
                        HStack {
                            Image(systemName: "arrow.up")
                                .foregroundStyle(post.upvoted ? .blue : .secondary)
                            Text(post.title)
                            Spacer()
                            HStack {
                                Image(systemName: "person.fill")
                                Text(post.creator.name)
                            }
                            .foregroundStyle(post.creator.banned ? .red : .secondary)
                        }
                    }
                }
            }
            .navigationTitle("Posts")
        }
        .onAppear {
            tracker.items.append(contentsOf: APIClient.shared.loadPosts())
        }
    }
}

#Preview {
    FeedView()
}
