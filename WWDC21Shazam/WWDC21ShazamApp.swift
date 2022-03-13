//
//  WWDC21ShazamApp.swift
//  WWDC21Shazam
//
//  Created by Runhua Huang on 2021/6/16.
//

import SwiftUI

@main
struct WWDC21ShazamApp: App {
    
    @StateObject private var matcher = Matcher()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(matcher)
        }
    }
}
