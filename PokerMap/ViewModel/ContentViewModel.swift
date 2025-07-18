//
//  ContentViewModel.swift
//  PokerMap
//
//  Created by Nithin Senthil on 7/16/25.
//

import SwiftUI

class ContentViewModel: ObservableObject {
    @Published var counter = 0
    
    func incrementCounter() {
        counter += 1
        print("Counter incremented")
    }
}
