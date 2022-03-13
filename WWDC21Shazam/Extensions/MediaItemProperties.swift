//
//  MediaItemProperties.swift
//  WWDC21Shazam
//
//  Created by Runhua Huang on 2021/6/16.
//
//  Abstract:
//  Extension for custom ShazamKit media item properties.

import ShazamKit

extension SHMediaItemProperty {
    static let speaker = SHMediaItemProperty("speaker")
    static let session = SHMediaItemProperty("session")
}

extension SHMediaItem {
    var session: Int? {
        return self[.session] as? Int
    }
}
