//
//  Extensions.swift
//  BarteringApp
//
//  Created by Fazil Raja on 11/6/22.
//

import Foundation
import SwiftUI

// Extension for adding rounded corners to specific corners
extension View {
    func cornerRadiusMessages(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCornerMessages(radius: radius, corners: corners) )
    }
}

// Custom RoundedCorner shape used for cornerRadius extension above
struct RoundedCornerMessages: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
