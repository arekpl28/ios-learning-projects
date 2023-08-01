//
//  GameView.swift
//  TicTacToeGame
//
//  Created by Arkadiusz Plumbaum on 01/08/2023.
//

import SwiftUI

struct GameView: View {
    // Environment property to access the dismiss function to close the current view
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        // Add a toolbar to the view
        .toolbar {
            // Place the "End Game" button on the navigation bar's trailing side
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("End Game") {
                    // Call the dismiss function when the "End Game" button is tapped to close the view
                    dismiss()
                }
                // Apply a bordered button style to the "End Game" button
                .buttonStyle(.bordered)
            }
        }
        .navigationTitle("Xs and Os")
        .inNavigationStack()
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
