//
//  GameRowView.swift
//  PokerMap
//
//  Created by Nithin Senthil on 7/29/25.
//

import SwiftUI
import SwiftData

struct GameRowView: View {
    @StateObject var viewModel = ContentViewModel()
    let rowId: Int
    let game: Game
    let screenWidth: CGFloat = UIScreen.main.bounds.width
    let screenHeight: CGFloat = UIScreen.main.bounds.height
    let boxWidth: CGFloat = UIScreen.main.bounds.width - (0.1 * UIScreen.main.bounds.width)
    let boxHeight: CGFloat = UIScreen.main.bounds.height - (0.85 * UIScreen.main.bounds.height)
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(.teal)
                .frame(maxWidth: boxWidth,
                       maxHeight: boxHeight)
            
//            Text("This is a game")
//            VStack {
//                HStack {
//
//                }
//            }
            Grid() {
                GridRow {
                    GameRowPlayerCard(text: game.players[0], width: boxWidth/2 - 20, height: boxHeight/2 - 20)
                    GameRowPlayerCard(text: game.players[1], width: boxWidth/2 - 20, height: boxHeight/2 - 20)
                }
                GridRow {
                    GameRowPlayerCard(text: game.players[2], width: boxWidth/2 - 20, height: boxHeight/2 - 20)
                    GameRowPlayerCard(text: game.players[3], width: boxWidth/2 - 20, height: boxHeight/2 - 20)
                }
            }
//            HStack {
//                Text("Game 1")
//                VStack {
//                    Text("Round")
//                    Text("1")
//                }
//            }
        }.border(.teal)
    }
}

#Preview {
    GameRowView(rowId: 0, game: Game(name: "", players: ["Player 1", "Player 2", "Player 3", "Player 4"]))
}
