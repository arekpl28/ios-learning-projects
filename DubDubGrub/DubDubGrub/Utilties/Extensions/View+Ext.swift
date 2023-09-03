//
//  View+Ext.swift
//  DubDubGrub
//
//  Created by Arkadiusz Plumbaum on 03/09/2023.
//

import SwiftUI

extension View {
    func profileNameStyle() -> some View {
        self.modifier(ProfileNameText())
    }
}
