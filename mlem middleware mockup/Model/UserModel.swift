//
//  UserModel.swift
//  mlem middleware mockup
//
//  Created by Sjmarf on 12/10/2023.
//

import Foundation

@Observable final class UserModel: ContentModel {
    static var cache: ContentCache<UserModel> = .init()
    typealias APIType = APIUser
    
    let id: Int
    let name: String
    var banned: Bool {
        didSet {
            APIClient.shared.banUser(id: id)
        }
    }
    
    required init(from apiUser: APIUser) {
        self.id = apiUser.id
        self.name = apiUser.name
        self.banned = apiUser.banned
    }
}
