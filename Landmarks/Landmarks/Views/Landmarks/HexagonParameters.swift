//
//  HexagonParameters.swift
//  Landmarks
//
//  Created by Naohiro Hamada on 2022/11/26.
//

import Foundation
import CoreGraphics

struct HexagonParameters {
    struct Segment {
        let line: CGPoint
        let curve: CGPoint
        let control: CGPoint
    }
    
    static let adjustment: CGFloat = 0.085
    
    static let segments = [
        Segment(
            line: .init(x: 0.60, y: 0.05),
            curve: .init(x: 0.40, y: 0.05),
            control: .init(x: 0.50, y: 0.00)
        ),
        Segment(
            line: .init(x: 0.05, y: 0.20 + adjustment),
            curve: .init(x: 0.00, y: 0.30 + adjustment),
            control: .init(x: 0.00, y: 0.25 + adjustment)
        ),
        Segment(
            line: .init(x: 0.00, y: 0.70 - adjustment),
            curve: .init(x: 0.05, y: 0.80 - adjustment),
            control: .init(x: 0.00, y: 0.75 - adjustment)
        ),
        Segment(
            line: .init(x: 0.40, y: 0.95),
            curve: .init(x: 0.60, y: 0.95),
            control: .init(x: 0.50, y: 1.00)
        ),
        Segment(
            line: .init(x: 0.95, y: 0.80 - adjustment),
            curve: .init(x: 1.00, y: 0.70 - adjustment),
            control: .init(x: 1.00, y: 0.75 - adjustment)
        ),
        Segment(
            line: .init(x: 1.00, y: 0.30 + adjustment),
            curve: .init(x: 0.96, y: 0.20 + adjustment),
            control: .init(x: 1.00, y: 0.25 + adjustment)
        ),
    ]
}
