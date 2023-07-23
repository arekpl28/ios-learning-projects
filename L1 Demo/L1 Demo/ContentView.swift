//
//  ContentView.swift
//  L1 Demo
//
//  Created by Arkadiusz Plumbaum on 23/07/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // ZStack - A container that overlays its children views on top of each other.
        ZStack {
            // Color - A view that represents a solid color.
            Color(.black)
                .ignoresSafeArea() // Fills the whole screen with black color, ignoring the safe area
            
            // VStack - A container that arranges its children views in a vertical stack.
            VStack {
                // Image - A view that displays an image.
                Image("niagarafalls") // Adds an image with the name "niagarafalls" from the app's resources
                    .resizable() // Makes the image resizable to fit the available space
                    .cornerRadius(15) // Rounds the corners of the image with a radius of 15 points
                    .aspectRatio(contentMode: .fit) // Sets the aspect ratio of the image to fit the available space while maintaining its aspect ratio
                
                // Text - A view that displays a text.
                Text("Niagara Falls") // Adds a text view with the text "Niagara Falls"
                    .font(.largeTitle) // Sets the font size to large title
                    .fontWeight(.semibold) // Sets the font weight to semibold (slightly bolder than regular)
                    .foregroundColor(Color.white) // Sets the text color to white
            }
        }        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
