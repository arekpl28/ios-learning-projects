//
//  CustomModifiers.swift
//  DubDubGrub
//
//  Created by Arkadiusz Plumbaum on 03/09/2023.
//

import SwiftUI

struct ProfileNameText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 32, weight: .bold))
            .lineLimit(1)
            .minimumScaleFactor(0.75)
    }
}
