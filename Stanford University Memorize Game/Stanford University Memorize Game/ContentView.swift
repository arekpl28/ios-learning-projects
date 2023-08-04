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
    // Array of emojis used as card content
    var emojis = ["🚲", "🚂", "🚁", "🚜", "🚕", "🏎️", "🚑", "🚓", "🚒", "✈️", "🚀", "🚢", "🛸", "🛶", "🚌", "🏍️", "🛺", "🚠", "🛵", "🚗", "🚚", "🚇", "🚛", "🛴"]
    
    // State variable to control the number of visible cards
    @State var emojiCount = 4
    
    let columns = [GridItem(.adaptive(minimum: 65))] // Define the grid columns
    
    var body: some View {
        VStack {
            ScrollView {
                // Display the cards in a grid layout
                LazyVGrid(columns: columns) {
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content: emoji).aspectRatio(2/3, contentMode: .fit) // Display each card using the CardView
                    }
                }
            }.foregroundColor(.red)
            Spacer()
            
            // UI for adding or removing cards
            HStack {
                remove
                Spacer ()
                add
            }
            .font(.largeTitle)
            .padding(.horizontal)
        }
        .padding(.horizontal)
        
    }
    
    var remove: some View {
        // Button to remove a card
        Button {
            if emojiCount > 1 {
                emojiCount -= 1
            }
        } label: {
            Image(systemName: "minus.circle")
        }
    }
    
    var add: some View {
        // Button to add a card
        Button {
            if emojiCount < emojis.count {
                emojiCount += 1
            }
        } label: {
            Image(systemName: "plus.circle")
        }
    }
}

// CardView is a custom View to represent a card
struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            
            if isFaceUp {
                // Display the front side of the card
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                // Display the back side of the card
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp // Toggle card face
        }
    }
}

// PreviewProvider for ContentView
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
