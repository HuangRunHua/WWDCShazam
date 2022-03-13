//
//  Topic.swift
//  WWDC21Shazam
//
//  Created by Runhua Huang on 2021/6/17.
//

import Foundation
import SwiftUI

struct Topic: Comparable, Equatable {
    let title: String
    let subtitle: String
    let image: Image
    let offset: TimeInterval
    
    init(title: String, subtitle: String, image: Image, offset: TimeInterval) {
        self.title = title
        self.subtitle = subtitle
        self.offset = offset
        self.image = image
    }
    
    static func < (lhs: Topic, rhs: Topic) -> Bool {
        return lhs.offset < rhs.offset
    }
    
    static func == (lhs: Topic, rhs: Topic) -> Bool {
        return lhs.title == rhs.title && lhs.offset == rhs.offset
    }
}
