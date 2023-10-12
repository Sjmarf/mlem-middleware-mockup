//
//  APIUser.swift
//  mlem middleware mockup
//
//  Created by Sjmarf on 12/10/2023.
//

import Foundation

struct APIUser: APIContentType {
    let id: Int
    let name: String
    let banned: Bool
}
