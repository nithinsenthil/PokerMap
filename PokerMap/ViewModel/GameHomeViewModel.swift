//
//  GameHomeViewModel.swift
//  PokerMap
//
//  Created by Nithin Senthil on 7/16/25.
//

import SwiftUI

class GameHomeViewModel: ObservableObject {
    @Published var counter = 0
    @Published var games: [Game] = []
    @Published var players: [String] = []
    
    init() {
        loadData()
    }
    
    func loadData() {
//        games = [
//            GameRowView(rowId: 0, game: Game(name: "")),
//            GameRowView(rowId: 1, game: Game(name: "")),
//            GameRowView(rowId: 2, game: Game(name: ""))
//        ]
        players = [
            "Nithin",
            "Wendy",
            "Ivy",
            "Richard"
        ]
        
        games = [
            Game(name: "Nithin", players: players),
            Game(name: "Ivy", players: players),
            Game(name: "Wendy", players: players),
            Game(name: "Richard", players: players),
            Game(name: "Richard", players: players),
            Game(name: "Richard", players: players),
            Game(name: "Richard", players: players),
            Game(name: "Richard", players: players),
            Game(name: "Richard", players: players)
        ]
        
        
    }
    
    func incrementCounter() {
        counter += 1
        print("Counter incremented")
    }
}
