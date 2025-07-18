//
//  ContentView.swift
//  PokerMap
//
//  Created by Nithin Senthil on 7/16/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: SecondView(), label: {Text("Hello")})
                
                VStack {
                    Text("Counter: \($viewModel.counter.wrappedValue)")
                    Button(action: viewModel.incrementCounter, label: {Text("Add Counter")})
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
