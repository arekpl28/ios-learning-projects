//
//  ContentView.swift
//  L3 Demo
//
//  Created by Arkadiusz Plumbaum on 23/07/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(.systemMint)          // Sets the background color to the system color "Mint"
                .ignoresSafeArea()      // Ignores the safe area of the screen, filling the whole screen with color
            
            VStack(alignment: .leading, spacing: 20.0) {
                Image("niegarafalls")                   // Adds an image with the name "niegarafalls" from the app's resources
                    .resizable()                        // Makes the image resizable to fit the available space
                    .aspectRatio(contentMode: .fit)     // Sets the aspect ratio of the image to fit the available space while maintaining its aspect ratio
                    .cornerRadius(15)                   // Rounds the corners of the image with a radius of 15 points
                
                HStack {
                    Text("Niagara Falls")  
                        .font(.title)       // Sets the font size to title
                        .fontWeight(.bold)  // Sets the font weight to bold
                    
                    Spacer() // Adds a flexible space, so the elements in the HStack are well centered
                    
                    VStack {
                        HStack {
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.leadinghalf.filled")
                        }
                        
                        Text("(Reviews 361)")
                    }
                    .foregroundColor(.orange)   // Sets the color of the VStack's content to orange
                    .font(.caption)             // Sets the font size to caption
                    
                }
                Text("Come visit the falls from an experience of a lifetime.")
                
                HStack {
                    Spacer()                                // Adds a flexible space, so the images are well centered
                    Image(systemName: "fork.knife")         // Adds an icon of a fork and knife
                    Image(systemName: "binoculars.fill")    // Adds an icon of filled binoculars
                }
                .foregroundColor(.gray)     // Sets the color of the HStack's content to gray
                .font(.caption)             // Sets the font size to caption
            }
            .padding()                      // Adds inner padding to the VStack's content
            .background(Rectangle()
                .foregroundColor(.white)    // Sets the background to white color
                .cornerRadius(15)           // Rounds the corners of the rectangle with a radius of 15 points
                .shadow(radius: 15)         // Adds a shadow effect with a radius of 15 points
            )
            .padding()                      // Adds outer padding to the VStack's content
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
