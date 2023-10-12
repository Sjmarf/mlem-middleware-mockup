//
//  APIPost.swift
//  mlem middleware mockup
//
//  Created by Sjmarf on 12/10/2023.
//

import Foundation

struct APIPost: APIContentType {
    let id: Int
    let title: String
    let body: String
    let upvoted: Bool
    let user: APIUser
}
