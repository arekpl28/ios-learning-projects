//
//  MemoryGame.swift
//  Stanford University Memorize Game
//
//  Created by Arkadiusz Plumbaum on 05/08/2023.
//

import Foundation

// The MemoryGame structure describes the logic of the memory game.
struct MemoryGame<CardContent> where CardContent: Equatable{
    private(set) var cards: Array<Card>
    
    private var indexOfTheOneAndOnlyFaceUpCard: Int?
    
    // The choose() function represents a player's card selection.
    mutating func choose(_ card: Card) {
        // Find the index of the chosen card in the cards array
        if let chosenIndex = cards.firstIndex(where: { $0.id == card.id }),
           !cards[chosenIndex].isFaceUp,
           !cards[chosenIndex].isMatched
        {
            // Check if there's a previously face-up card
            if let potentialMatchIndex = indexOfTheOneAndOnlyFaceUpCard{
                // Check if the chosen card matches the previously face-up card
                if cards[chosenIndex].content == cards[potentialMatchIndex].content {
                    // Mark both cards as matched
                    cards[chosenIndex].isMatched = true
                    cards[potentialMatchIndex].isMatched = true
                }
                // Clear the previously face-up card index
                indexOfTheOneAndOnlyFaceUpCard = nil
            } else {
                // Flip all cards face-down except the chosen one
                for index in cards.indices {
                    cards[index].isFaceUp = false
                }
                // Set the chosen card as the one and only face-up card
                indexOfTheOneAndOnlyFaceUpCard = chosenIndex
            }
            // Toggle the chosen card's face-up state
            cards[chosenIndex].isFaceUp.toggle()
        }
        // Print the updated cards array for debugging
        print(cards)
    }
    
    // The initializer to set up the game with pairs of cards.
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = []
        // Add numberOfPairsOfCards X 2 cards to the cards array
        for pairIndex in 0..<numberOfPairsOfCards {
            let content: CardContent = createCardContent(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
    }
    
    // The internal Card structure describes card properties.
    struct Card: Identifiable {
        var isFaceUp = false
        var isMatched = false
        let content: CardContent
        let id: Int
    }
}
