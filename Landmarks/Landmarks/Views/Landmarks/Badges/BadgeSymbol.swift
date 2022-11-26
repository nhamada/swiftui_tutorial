//
//  BadgeSymbol.swift
//  Landmarks
//
//  Created by Naohiro Hamada on 2022/11/26.
//

import SwiftUI

struct BadgeSymbol: View {
    static let symbolColor = Color(red: 79.0 / 255.0,
                                   green: 79.0 / 255.0,
                                   blue: 191.0 / 255.0)
    
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let width = min(geometry.size.width, geometry.size.height)
                let height = width * 0.75
                let spacing = width * 0.030
                let middle = width * 0.5
                let topWidth = width * 0.226
                let topHeight = height * 0.488
                
                path.addLines([
                    .init(x: middle, y: spacing),
                    .init(x: middle - topWidth, y: topHeight - spacing),
                    .init(x: middle, y: topHeight / 2 + spacing),
                    .init(x: middle + topWidth, y: topHeight - spacing),
                    .init(x: middle, y: spacing),
                ])
                
                path.move(to: .init(x: middle, y: topHeight / 2 + spacing * 3))
                path.addLines([
                    .init(x: middle - topWidth, y: topHeight + spacing),
                    .init(x: spacing, y: height - spacing),
                    .init(x: width - spacing, y: height - spacing),
                    .init(x: middle + topWidth, y: topHeight + spacing),
                    .init(x: middle, y: topHeight / 2 + spacing * 3),
                ])
            }
            .fill(Self.symbolColor)
        }
    }
}

struct BadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        BadgeSymbol()
    }
}
