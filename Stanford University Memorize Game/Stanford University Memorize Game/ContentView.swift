//
//  ContentView.swift
//  Stanford University Memorize Game
//
//  Created by Arkadiusz Plumbaum on 03/08/2023.
//

// This is the main view for the game.
// It contains the UI elements and logic for the card matching game.

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: EmojiMemoryGame
    
    
    let columns = [GridItem(.adaptive(minimum: 65))] // Define the grid columns
    
    var body: some View {
        
        ScrollView {
            // Display the cards in a grid layout
            LazyVGrid(columns: columns) {
                ForEach(viewModel.cards) { card in
                    CardView(card: card)
                        .aspectRatio(2/3, contentMode: .fit) // Display each card using the CardView
                        .onTapGesture {
                            viewModel.choose(card)
                        }
                }
            }
        }
        .foregroundColor(.red)
        .padding(.horizontal)
    }
}

// CardView is a custom View to represent a card
struct CardView: View {
    let card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            
            if card.isFaceUp {
                // Display the front side of the card
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(card.content).font(.largeTitle)
            } else if card.isMatched {
                shape.opacity(0)
            } else {
                // Display the back side of the card
                shape.fill()
            }
            
        }
    }
}

// PreviewProvider for ContentView
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        ContentView(viewModel: game)
    }
}
