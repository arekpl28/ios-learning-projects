//
//  ContentView.swift
//  TicTacToeGame
//
//  Created by Arkadiusz Plumbaum on 01/08/2023.
//

import SwiftUI

struct StartView: View {
    // State variables to keep track of the selected game type and user names
    @State private var gameType: GameType = .undetermined
    @State private var yourName = ""
    @State private var opponentName = ""
    
    // State variable to manage focus on text fields
    @FocusState private var focus: Bool
    
    var body: some View {
        VStack {
            // Picker to select the game type
            Picker("Select Game", selection: $gameType) {
                Text("Select Game Type").tag(GameType.undetermined)
                Text("Two Sharing device").tag(GameType.single)
                Text("Challenge your device").tag(GameType.bot)
                Text("Challenge a friend").tag(GameType.peer)
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 10, style: .continuous).stroke(lineWidth: 2))
            .accentColor(.primary)
            
            // Text displaying the description of the selected game type
            Text(gameType.description)
                .padding()
            
            // VStack to display additional text fields based on the selected game type
            VStack {
                switch gameType {
                case .single:
                    // Text fields for "Your Name" and "Opponent Name" in single-player mode
                    VStack {
                        TextField("Your Name", text: $yourName)
                        TextField("Opponent Name", text: $opponentName)
                    }
                case .bot:
                    // Text field for "Your Name" in bot mode
                    TextField("Your Name", text: $yourName)
                case .peer:
                    EmptyView()
                case .undetermined:
                    EmptyView()
                }
            }
            .padding()
            .textFieldStyle(.roundedBorder)
            .focused($focus)
            .frame(width: 350)
            
            // Button to start the game, disabled based on certain conditions
            if gameType != .peer {
                Button("Start Game") {
                    focus = false
                }
                .buttonStyle(.borderedProminent)
                .disabled(
                    gameType == .undetermined ||
                    gameType == .bot && yourName.isEmpty ||
                    (yourName.isEmpty || opponentName.isEmpty)
                )
                
                // Image view (consider adding appropriate image based on the app design)
                Image("LaunchScreen")
            }
            Spacer()
        }
        .padding()
        .navigationTitle("Xs And Os")
        .inNavigationStack()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
