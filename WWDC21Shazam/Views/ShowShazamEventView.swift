//
//  ShowShazamEventView.swift
//  WWDC21Shazam
//
//  Created by Runhua Huang on 2021/6/16.
//
//  ShowShazamEventView用来显示匹配的Apple Event

import SwiftUI

struct ShowShazamEventView: View {
    let title: String
    let subtitle: String
    let image: Image
    let showBlur: Bool
    @Binding var visible: Bool
    
    @State private var isAnimating = false
    
    var body: some View {
        ZStack {
            
            image.resizable().edgesIgnoringSafeArea(.all)
            
            if showBlur {
                VisualEffectView(effect: UIBlurEffect(style: .systemUltraThinMaterialDark))
                    .ignoresSafeArea()
                    .onTapGesture {
                        visible = false
                    }
            }
            VStack {
                
                Text(title)
                    .foregroundColor(.titleColor)
                    .font(.system(size: 100, weight: .black, design: .rounded))
                    .padding(.bottom, 15)
                    .padding([.leading, .trailing], 55)
                Text(subtitle)
                    .foregroundColor(.subtitleColor)
                    .font(.system(size: 50, weight: .bold, design: .rounded))
                    .multilineTextAlignment(.center)
                    .padding([.leading, .trailing], 55)
            }
                .scaleEffect(isAnimating ? 1 : 0.5)
        }.onAppear { isAnimating.toggle() }
        .onDisappear { visible = false }
    }
}
    
extension ShowShazamEventView {
    init(title: String, subtitle: String, image: Image, visible: Binding<Bool> = .constant(false)) {
        self.title = title
        self.subtitle = subtitle
        self.image = image
        self.showBlur = true
        _visible = visible
    }
}

struct ShowShazamEventView_Previews: PreviewProvider {
    static var previews: some View {
        ShowShazamEventView(title: "WWDC21",
                            subtitle: "Announcing our biggest updates ever to iOS, iPadOS, watchOS — and the entirely reimagined macOS Big Sur.",
                            image: .wWDC21Image).previewInterfaceOrientation(.landscapeRight)
    }
}
