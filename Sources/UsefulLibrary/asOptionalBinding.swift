//
//  asOptionalBinding.swift
//  UsefulLibrary
//
//  Created by Brad R on 2/12/25.
//

import Foundation
import SwiftUI

@available(iOS 13.0, *)
@MainActor
extension Binding {
    func asOptional() -> Binding<Value?> {
        Binding<Value?>(
            get: { self.wrappedValue },
            set: { newValue in
                if let newValue = newValue {
                    self.wrappedValue = newValue
                }
            }
        )
    }
}
