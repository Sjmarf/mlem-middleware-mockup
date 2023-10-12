//
//  PostRepository.swift
//  mlem middleware mockup
//
//  Created by Sjmarf on 12/10/2023.
//

import Foundation

let loremIpsum = """
Qui ex anim labore quis sit laborum qui ullamco enim proident. Lorem incididunt nostrud ea mollit aute ullamco magna dolore pariatur eu eu aute ea. Aliquip deserunt ea dolor Lorem excepteur dolor sit minim. Laboris et mollit eu velit velit officia. Cillum aliqua ad esse deserunt ad anim in voluptate in Lorem consequat veniam id laboris. Do eiusmod ex enim nisi nostrud mollit quis Lorem aliqua.
"""

// In this example, APIClient returns ContentModel items for simplicity. In the real thing we may want an inbetween repository layer
class APIClient {
    // In the real thing we'd use dependencies instead of this
    static let shared = APIClient()
    
    // In reality this would have pagination parameters and actually contact the API
    func loadPosts() -> [PostModel] {
        let user1 = APIUser(id: 101, name: "Bob", banned: false)
        let user2 = APIUser(id: 102, name: "Sally", banned: false)
        
        let posts: [APIPost] = [
            .init(id: 1, title: "Post 1", body: loremIpsum, upvoted: false, user: user1),
            .init(id: 2, title: "Post 2", body: loremIpsum, upvoted: true, user: user2),
            .init(id: 3, title: "Post 3", body: loremIpsum, upvoted: false, user: user1)
        ]
        return posts.map(PostModel.cache.createModel)
    }
    
    func upvotePost(id: Int) { }
    func banUser(id: Int) { }
}
