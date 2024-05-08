//
//  RoundedCorners.swift
//  TwitterClone
//
//  Created by Nikk Bhateja on 06/05/24.
//

import SwiftUI

struct RoundedCorners: Shape {
    var corners: UIRectCorner
    var width: Double
    var height: Double
    
    func path(in rect: CGRect) -> Path {
    let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: width, height: height))
        
        return Path(path.cgPath)
    }
}
