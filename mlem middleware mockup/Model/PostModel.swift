//
//  PostModel.swift
//  mlem middleware mockup
//
//  Created by Sjmarf on 12/10/2023.
//

import Foundation

@Observable final class PostModel: ContentModel {
    static var cache: ContentCache<PostModel> = .init()
    typealias APIType = APIPost
    
    let id: Int
    let title: String
    let body: String
    var creator: UserModel
    var upvoted: Bool {
        didSet {
            APIClient.shared.upvotePost(id: id)
        }
    }
    
    required init(from apiPost: APIPost) {
        self.id = apiPost.id
        self.title = apiPost.title
        self.body = apiPost.body
        self.creator = UserModel.cache.createModel(for: apiPost.user)
        self.upvoted = apiPost.upvoted
    }
}
