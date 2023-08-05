//
//  Stanford_University_Memorize_GameApp.swift
//  Stanford University Memorize Game
//
//  Created by Arkadiusz Plumbaum on 03/08/2023.
//

import SwiftUI

@main
struct Stanford_University_Memorize_GameApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
