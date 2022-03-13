//
//  Colors.swift
//  WWDC21Shazam
//
//  Created by Runhua Huang on 2021/6/16.
//

import SwiftUI

extension Color {
    fileprivate static let backgroundGradientStart = Color("backgroundGradientStart")
    fileprivate static let backgroundGradientEnd = Color("backgroundGradientEnd")
    
    static let titleColor = Color("titleColor")
    static let subtitleColor = Color("subtitleColor")
    static let customTitleColor = Color("customTitleColor")
    static let customSubtitleColor = Color("customSubtitleColor")
    static let cuttingBoardColor = Color("cuttingBoardColor")
    static let cuttingBoardSecondaryColor = Color("cuttingBoardSecondaryColor")
    static let kitchenTilesColor = Color("kitchenTilesColor")
    static let kitchenTilesDividerColor = Color("kitchenTilesDividerColor")
}

extension LinearGradient {
    static func backgroundGradient(startPoint: UnitPoint, endPoint: UnitPoint) -> LinearGradient {
        let colors: [Color] = [.backgroundGradientStart, .backgroundGradientEnd]
        return gradient(colors: colors, startPoint: startPoint, endPoint: endPoint)
    }
    
    private static func gradient(colors: [Color], startPoint: UnitPoint, endPoint: UnitPoint) -> LinearGradient {
        return LinearGradient(gradient: Gradient(colors: colors), startPoint: startPoint, endPoint: endPoint)
    }
}
