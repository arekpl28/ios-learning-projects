//
//  MemoryGame.swift
//  Stanford University Memorize Game
//
//  Created by Arkadiusz Plumbaum on 05/08/2023.
//

import Foundation

// The MemoryGame structure describes the logic of the memory game.
struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>
    
    // The choose() function represents a player's card selection.
    func choose(_ card: Card) {
        // Code related to card selection will go here.
    }
    
    // The initializer to set up the game with pairs of cards.
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        // Add numberOfPairsOfCards X 2 cards to the cards array
        for pairIndex in 0..<numberOfPairsOfCards {
            let content: CardContent = createCardContent(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
    }
    
    // The internal Card structure describes card properties.
    struct Card: Identifiable {
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}
