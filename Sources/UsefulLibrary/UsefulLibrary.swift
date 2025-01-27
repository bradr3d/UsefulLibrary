// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import SwiftUI
import UIKit

@available(iOS 13.0, *)
@MainActor
extension Animation {
    func accessible() -> Animation? {
        UIAccessibility.isReduceMotionEnabled ? nil : self
    }
}
