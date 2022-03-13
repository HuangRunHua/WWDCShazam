//
//  AppleEvent.swift
//  WWDC21Shazam
//
//  Created by Runhua Huang on 2021/6/16.
//

import Foundation
import UIKit
import SwiftUI


struct AppleEvent: Identifiable, Equatable {
    let id = UUID()
    let title: String
    let time: String
    let subtitle: String
    let number: Int
    let image: Image
    
    var songIndex: String {
        return "Video \(number)"
    }

    static let allAppleEvents = [
        AppleEvent(title: "WWDC21", time: "June 8, 2021", subtitle: "Introducing iOS 15, iPadOS 15,macOS Monterey, and watchOS 8.", number: 1, image: .wWDC21Image),
        AppleEvent(title: "Apple Event", time: "April 20, 2021", subtitle: "Introducing the new iMac, iPad Pro, iPhone 12 in purple, AirTag, and Apple TV 4K.", number: 2, image: .appleEventApril_20_2021Image),
        AppleEvent(title: "Apple Event", time: "November 10, 2020", subtitle: "Introducing the new MacBook Air, 13‑inch MacBook Pro, and Mac mini, all with the Apple M1 chip.", number: 3, image: .appleEventNovember_10_2020Image),
        AppleEvent(title: "Apple Event", time: "October 13, 2020", subtitle: "Introducing iPhone 12 and iPhone 12 Pro with 5G, MagSafe accessories, and HomePod mini.", number: 4, image: .appleEventOctober_13_2020Image),
        AppleEvent(title: "WWDC20", time: "June 22, 2020", subtitle: "Announcing our biggest updates ever to iOS, iPadOS, watchOS — and the entirely reimagined macOS Big Sur.", number: 5, image: .wWDC20Image)
    ]
}
