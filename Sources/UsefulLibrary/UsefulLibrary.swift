import Foundation
import SwiftUI
import UIKit

@available(iOS 13.0, *)
@MainActor
public extension Animation {
    func accessible() -> Animation? {
        UIAccessibility.isReduceMotionEnabled ? nil : self
    }
}
