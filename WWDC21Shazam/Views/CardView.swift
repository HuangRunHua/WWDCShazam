//
//  CardView.swift
//  WWDC21Shazam
//
//  Created by Runhua Huang on 2021/6/16.
//
//  CardView用来显示当前演讲的内容

import SwiftUI

struct CardView: View {
    let topic: Topic
    let showBlur: Bool
    @Binding var visible: Bool
    
    @State private var isAnimating = false
    
    @State private var width: CGFloat = 0
    
    var body: some View {
        ZStack {
            if showBlur {
                VisualEffectView(effect: UIBlurEffect(style: .systemUltraThinMaterialDark))
                    .ignoresSafeArea()
                    .onTapGesture {
                        visible = false
                    }
            }
        
            VStack {
                topic.image
                    .padding([.leading, .trailing], 55)
                    .padding(.bottom)
                    .padding(.top, 55)
                Text(topic.title)
                    .frame(idealWidth:600, maxWidth: 700)
                    .fixedSize()
                    .multilineTextAlignment(.center)
                    .foregroundColor(.customTitleColor)
                    .font(.system(size: 55, weight: .black, design: .rounded))
                    .padding(.bottom, 15)
                    .padding([.leading, .trailing], 55)
                Text(topic.subtitle)
                    .frame(idealWidth:600, maxWidth: 700)
                    .fixedSize()
                    .foregroundColor(.customSubtitleColor)
                    .font(.system(size: 34, weight: .bold, design: .rounded))
                    .multilineTextAlignment(.center)
                    .padding([.leading, .trailing], 55)
                    .padding(.bottom, 55)
            }
                .background(Color.white)
                .cornerRadius(24)
                .scaleEffect(isAnimating ? 1 : 0.5)
                
        }.onAppear { isAnimating.toggle() }
        .onDisappear { visible = false }
    }
    
}

extension CardView {
    init(topic: Topic, visible: Binding<Bool> = .constant(false)) {
        self.topic = topic
        self.showBlur = true
        _visible = visible
    }
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(topic: Topic.allTopics[3])
            .previewInterfaceOrientation(.landscapeRight)
    }
}
