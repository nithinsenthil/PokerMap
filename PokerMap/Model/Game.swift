//
//  Game.swift
//  PokerMap
//
//  Created by Nithin Senthil on 8/4/25.
//

import Foundation
import SwiftData

@Model
final class Game: Identifiable {
    var id: UUID
    var name: String = ""
    var players: [String] = []
    var scores: [Int] = []
    
    init(id: UUID = UUID(), name: String, players: [String]) {
        self.id = id
        self.name = name
        self.players = players
    }
    
    func validateGame() -> Bool {
        return name != "" && players.count == 4
    }
}
