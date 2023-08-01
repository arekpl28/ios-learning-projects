//
//  GameModels.swift
//  TicTacToeGame
//
//  Created by Arkadiusz Plumbaum on 01/08/2023.
//

import Foundation

enum GameType {
    // Enum to represent different types of game modes
    case single, bot, peer, undetermined
    // Computed property to get a human-readable description of each game mode
    var description: String {
        switch self {
        case .single:
            return "Share your iPhone/iPad and play against a friend."
        case .bot:
            return "Play against this iPhone/iPad."
        case .peer:
            return "Invite someone near you who has this app running to play."
        case .undetermined:
            return ""
        }
    }
}
