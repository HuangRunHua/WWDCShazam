//
//  AppleEventListView.swift
//  WWDC21Shazam
//
//  Created by Runhua Huang on 2021/6/16.
//
//  

import SwiftUI

struct AppleEventListView: View {
    let currentAppleEvent: AppleEvent?
    
    var body: some View {
        ZStack {
            BackgroundView()
            AppleEventList()
                .frame(width: 720, height: 666)
            if let appleEvent = currentAppleEvent {
                ShowShazamEventView(title: appleEvent.title, subtitle: appleEvent.subtitle, image: appleEvent.image)
            }
        }
    }
}


private struct AppleEventList: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 40) {
            Text("Videos")
                .foregroundColor(.customTitleColor)
                .font(.system(size: 60, weight: .black, design: .rounded))
            ScrollView {
                ForEach(AppleEvent.allAppleEvents, id: \.id) { appleEvent in
                    AppleEventCell(appleEvent: appleEvent)
                }
            }
        }
        .padding([.leading, .trailing], 80)
        .padding(.top, 64)
        .background(Color.white)
        .cornerRadius(24)
    }
}

private struct AppleEventCell: View {
    let appleEvent: AppleEvent
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            
            HStack(alignment: .top , spacing: 10) {
                appleEvent.image.resizable().aspectRatio( contentMode: .fit).frame(width: 111).cornerRadius(5)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text(appleEvent.title)
                        .foregroundColor(.customSubtitleColor)
                        .font(.system(size: 25, weight: .bold, design: .default))
                        .padding(.leading, 5)
                    Text(appleEvent.time)
                        .foregroundColor(.customSubtitleColor)
                        .font(.system(size: 25, weight: .bold, design: .rounded))
                        .opacity(0.6)
                        .padding(.top, -8)
                        .padding(.bottom, 12)
                        .padding(.leading, 5)
                                    }
            }
            Text(appleEvent.subtitle)
                .foregroundColor(.black)
                .font(.system(size: 20, weight: .regular, design: .rounded))
                .padding(.leading, 5)

            Divider()
        }
    }
}

private struct BackgroundView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ZStack() {
            if colorScheme == .light {
                Image.macOSGraphicImage.position(x: UIScreen.main.bounds.width/2, y: UIScreen.main.bounds.height/2).opacity(0.5)
            }
            Image.WWDCImage
                .position(x: 930, y: 600).scaleEffect(1.2)
            Image.WWDCHelloImage
                .position(x: 250, y: 170).scaleEffect(1.2)
            Image.WWDCAppStoreImage
                .position(x: 200, y: 650).scaleEffect(1.2)
            Image.WWDCXcodeImage
                .position(x: 1000, y: 127).scaleEffect(1.1)
        }
    }
}

struct SongsListView_Previews: PreviewProvider {
    static var previews: some View {
        AppleEventListView(currentAppleEvent: AppleEvent(title: "WWDC21", time: "June 8, 2021", subtitle: "Introducing iOS 15, iPadOS 15,macOS Monterey, and watchOS 8.", number: 1, image: .wWDC21Image)).previewInterfaceOrientation(.landscapeRight)
    }
}
