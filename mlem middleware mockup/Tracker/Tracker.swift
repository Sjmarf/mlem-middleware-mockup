//
//  Tracker.swift
//  mlem middleware mockup
//
//  Created by Sjmarf on 12/10/2023.
//

import Foundation

// In reality this class would have some pagination-related methods.
// The beauty of @Observable is that we don't even need a Tracker if
// we don't want one - A simple array of items works just as well without
// issues. We would use a tracker when we want extra convenience functions
// that a simple array can't provide

@Observable class Tracker<Content: ContentModel> {
    var items: [Content]
    
    init() {
        self.items = .init()
    }
}
