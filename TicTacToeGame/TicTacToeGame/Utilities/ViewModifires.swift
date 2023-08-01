//
//  ViewModifires.swift
//  TicTacToeGame
//
//  Created by Arkadiusz Plumbaum on 01/08/2023.
//

import SwiftUI
// A custom ViewModifier to provide a unified navigation stack experience for iOS 16 and earlier versions.
struct NavStackContainer: ViewModifier {
    
    // The body function is required for any ViewModifier.
    // It takes the content (the view that this modifier is applied to) and returns a new view with the modification
    func body(content: Content) -> some View {
        // Check if the iOS version is 16 (or newer) using #available syntax.
        if #available(iOS 16, *) {
            // If iOS version is 16 or newer, use the new NavigationStack view modifier (iOS 16+ feature).
            // The NavigationStack groups the views in a navigation stack manner.
            NavigationStack {
                content
            }
        } else {
            // If iOS version is earlier than 16, use the traditional NavigationView.
            NavigationView {
                content
            }
            // Apply the .stack navigation view style to mimic the iOS 16+ NavigationStack behavior.
            // This style ensures that the navigation views are presented in a stack-like manner.
            .navigationViewStyle(.stack)
        }
    }
}

extension View {
    public func inNavigationStack() -> some View {
        return self.modifier(NavStackContainer())
    }
}
