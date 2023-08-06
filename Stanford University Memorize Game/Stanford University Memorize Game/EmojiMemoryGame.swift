//
//  EmojiMemoryGame.swift
//  Stanford University Memorize Game
//
//  Created by Arkadiusz Plumbaum on 05/08/2023.
//

import SwiftUI

// The EmojiMemoryGame class defines the main game logic and data.
class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    // A static array of emojis used as card content
    private static let emojis = ["🚲", "🚂", "🚁", "🚜", "🚕", "🏎️", "🚑", "🚓", "🚒", "✈️", "🚀", "🚢", "🛸", "🛶", "🚌", "🏍️", "🛺", "🚠", "🛵", "🚗", "🚚", "🚇", "🚛", "🛴"]
    
    // A static function to create a new MemoryGame instance
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    // Private instance of MemoryGame created using the createMemoryGame function
    @Published private var model = createMemoryGame()
    
    // Expose the array of cards from the model
    var cards: Array<Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: Card) {
        model.choose(card)
    }
}
