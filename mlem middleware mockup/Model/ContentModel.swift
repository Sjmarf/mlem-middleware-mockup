//
//  ContentModel.swift
//  mlem middleware mockup
//
//  Created by Sjmarf on 12/10/2023.
//

import Foundation

protocol ContentModel: AnyObject {
    associatedtype APIType: APIContentType
    
    var id: Int { get }
    static var cache: ContentCache<Self> { get }
    init(from: APIType)
}
