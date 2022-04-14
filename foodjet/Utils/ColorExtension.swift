//
//  ColorExtension.swift
//  foodjet
//
//  Created by Natdanai Chaiyakan on 14/4/2565 BE.
//

import Foundation
import SwiftUI

extension Color {
    static var orangeLight:     Color { .rgb(255, 123, 084) }
    static var yellowLight:      Color { .rgb(255, 213, 107) }
}

extension Color {
    static func rgb(_ red: UInt8, _ green: UInt8, _ blue: UInt8) -> Color {
        func value(_ raw: UInt8) -> Double {
            return Double(raw)/Double(255)
        }
        return Color(
            red: value(red),
            green: value(green),
            blue: value(blue)
        )
    }
}
