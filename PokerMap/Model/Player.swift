//
//  Player.swift
//  PokerMap
//
//  Created by Nithin Senthil on 8/4/25.
//

import Foundation
import SwiftData

@Model
final class Player: Identifiable {
    var id: UUID
    var name: String
    var creationDate: Date
    
    
    init(id: UUID = UUID(), name: String, creationDate: Date = Date()) {
        self.id = id
        self.name = name
        self.creationDate = creationDate
    }
}
