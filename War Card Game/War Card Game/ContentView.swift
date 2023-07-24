//
//  ContentView.swift
//  War Card Game
//
//  Created on 24/07/2023.
//

import SwiftUI

struct ContentView: View {
    // The variables to store card names and scores
    var playerCard = "card7"
    var cpuCard = "card6"
    
    var playerScore:Int = 0
    var cpuScore:Int = 0
    
    var body: some View {
        
        ZStack {
            // Image as Background
            Image("background-plain")
                .resizable() // Makes the background image resizable to fit the available space
                .ignoresSafeArea() // Ignores the safe area of the screen, filling the whole screen with the background image
            
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
                        Text(String(playerScore))
                            .font(.largeTitle) // Sets the font to large title size
                    }
                    Spacer()
                    
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10) // Adds padding bottom on the text
                        Text(String(cpuScore))
                            .font(.largeTitle) // Sets the font to large title size
                    }
                    
                    Spacer()
                }
                .foregroundColor(.white) // Sets the text color of the player/CPU info to white
                Spacer()
            }
        }
    }
    // Function to deal cards
    func deal() {
        print("Deal cards")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
