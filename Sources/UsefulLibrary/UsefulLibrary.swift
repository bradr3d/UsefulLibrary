// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import SwiftUI
import UIKit

@available(iOS 13.0, *)
@MainActor
public func withOptionalAnimation<Result>(_ animation: Animation? = .default, _ body: () throws -> Result) rethrows -> Result {
    if UIAccessibility.isReduceMotionEnabled {
        return try body()
    } else {
        return try withAnimation(animation, body)
    }
}
