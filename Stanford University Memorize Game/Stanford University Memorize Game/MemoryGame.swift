//
//  MemoryGame.swift
//  Stanford University Memorize Game
//
//  Created by Arkadiusz Plumbaum on 05/08/2023.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    // The choose() function represents a player's card selection.
    func choose(_ card: Card) {
        // Code related to card selection will go here.
    }
    
    // The internal Card structure describes card properties.
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
