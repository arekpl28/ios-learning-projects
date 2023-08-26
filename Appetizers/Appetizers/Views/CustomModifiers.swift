//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Arkadiusz Plumbaum on 26/08/2023.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}
