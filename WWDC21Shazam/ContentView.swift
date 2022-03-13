//
//  ContentView.swift
//  WWDC21Shazam
//
//  Created by Runhua Huang on 2021/6/16.
//

import SwiftUI
import Combine
import ShazamKit

struct ContentView: View {
    
    @EnvironmentObject var matcher: Matcher
    
    var body: some View {
        ZStack {
            AppleEventListView(currentAppleEvent: nil)
            
            if let topic = matcher.result.topic {
                // Show the content of the episode when we found a Question.
                CardView(topic: topic)
            } else if let mediaItem = matcher.result.mediaItem{
                AppleEventListView(currentAppleEvent: AppleEvent.allAppleEvents.first { appleevent in
                    print("mediaItem = \(mediaItem)")
                    print("appleevent.title = \(appleevent.title)")
                    return appleevent.number == mediaItem.session
                })
            }
        }.onAppear {
            do {
                if let catalog = try CatalogProvider.catalog() {
                    try matcher.match(catalog: catalog)
                }
            } catch {
                print("Record Error")
                print(error)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(Matcher())
            .previewInterfaceOrientation(.landscapeRight)
    }
}
