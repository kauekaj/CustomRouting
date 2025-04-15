//
//  Binding+EXT.swift
//  ArchitectureBootcamp
//
//  Created by Kaue de Assis Jacyntho on 11/04/25.
//

import SwiftUI

extension Binding where Value == Bool {
    
    init<T: Sendable>(ifNotNil value: Binding<T?>) {
        self.init {
            value.wrappedValue != nil
        } set: { newValue in
            if !newValue {
                value.wrappedValue = nil
            }
        }
    }
}
