//
//  ContentView.swift
//  War Card Game
//
//  Created on 24/07/2023.
//

import SwiftUI

struct ContentView: View {
    // The variables to store card names and scores
    @State var gameBackground = "background1"
    @State var gameBackgroundMini = "background2"
    @State var numBackground = 1
    @State var numBackgroundMini = 2
    
    @State var playerCard = "back"
    @State var cpuCard = "back"
    
    @State var playerScore:Int = 0
    @State var cpuScore:Int = 0
    
    @State var playerCardValue = 0
    @State var cpuCardValue = 0
    
    var body: some View {
        
        ZStack {
            // Image as Background
            Image(gameBackground)
                .resizable() // Makes the background image resizable to fit the available space
                .ignoresSafeArea() // Ignores the safe area of the screen, filling the whole screen with the background image
            VStack {
                Button {
                    changeBackground()
                } label: {
                    Image(gameBackgroundMini)
                        .resizable()
                        .frame(width: 30.0, height: 60.0)
                    
                }.cornerRadius(6)
            }.position(.init(x: 380, y: 30))
            
            VStack {
                Spacer()
                // Logo Image
                Image("logo")
                
                Spacer()
                // HStack to Display Two Cards Horizontally
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                // Button Image
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                
                Spacer()
                // HStack to Display Player and CPU Information
                HStack {
                    Spacer()
                    
                    VStack {
                        Text("Player")
                            .font(.headline) // Sets the font to headline size
                            .padding(.bottom, 10) // Adds padding bottom on the text
                        Text(String(playerScore)).font(.largeTitle) // Sets the font to large title size
                    }
                    Spacer()
                    
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10) // Adds padding bottom on the text
                        Text(String(cpuScore)).font(.largeTitle) // Sets the font to large title size
                    }
                    
                    Spacer()
                }.foregroundColor(.white) // Sets the text color of the player/CPU info to white
                Spacer()
                
                Button("Reset") {
                    resetGame()
                }
                .font(.headline)
                .foregroundColor(.white)
            }
        }
    }
    // Function to change background
    func changeBackground() {
        numBackground += 1
        numBackgroundMini += 1
        
        if numBackground == 5 {
            numBackground = 1
        } else if numBackgroundMini == 5 {
            numBackgroundMini = 1
        }
        gameBackground = "background" + String(numBackground)
        gameBackgroundMini = "background" + String(numBackgroundMini)
    }
    
    // Function to deal cards
    func deal() {
        // Randomize the players card
        playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        // Randomize the players card
        cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        // Update the scores
        if playerCardValue > cpuCardValue {
            playerScore += 1
        } else if playerCardValue < cpuCardValue {
            cpuScore += 1
        }
    }
    
    func resetGame() {
        playerCard = "back"
        cpuCard = "back"
        playerScore = 0
        cpuScore = 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
