//
//  SecondView.swift
//  PokerMap
//
//  Created by Nithin Senthil on 7/16/25.
//

import SwiftUI
import SwiftData

struct SecondView: View {
    @ObservedObject var viewModel = ContentViewModel()
    
    var body: some View {
        Text("Other Counter: \($viewModel.counter.wrappedValue)")
        Button(action: viewModel.incrementCounter, label: {Text("Other Button")})
        
    }
}

#Preview {
    SecondView()
}
