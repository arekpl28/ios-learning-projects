//
//  EmojiMemoryGame.swift
//  Stanford University Memorize Game
//
//  Created by Arkadiusz Plumbaum on 05/08/2023.
//

import SwiftUI

// The EmojiMemoryGame class defines the main game logic and data.
class EmojiMemoryGame: ObservableObject {
    // A static array of emojis used as card content
    static let emojis = ["🚲", "🚂", "🚁", "🚜", "🚕", "🏎️", "🚑", "🚓", "🚒", "✈️", "🚀", "🚢", "🛸", "🛶", "🚌", "🏍️", "🛺", "🚠", "🛵", "🚗", "🚚", "🚇", "🚛", "🛴"]
    
    // A static function to create a new MemoryGame instance
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    // Private instance of MemoryGame created using the createMemoryGame function
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    // Expose the array of cards from the model
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
