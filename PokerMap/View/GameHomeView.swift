//
//  GameHomeView.swift
//  PokerMap
//
//  Created by Nithin Senthil on 7/16/25.
//

import SwiftUI
import SwiftData

struct GameHomeView: View {
    @StateObject var viewModel = ContentViewModel()
    let id: [Int] = [
        1,
        2,
        3
    ]
    
    private struct NamedFont: Identifiable {
        let name: String
        let font: Font
        var id: String { name }
    }

    private var namedFonts: [NamedFont] = [
        NamedFont(name: "Large Title", font: .largeTitle),
        NamedFont(name: "Title", font: .title),
        NamedFont(name: "Headline", font: .headline),
        NamedFont(name: "Body", font: .body),
        NamedFont(name: "Caption", font: .caption)
    ]
    
//    private var players: [String] = [
//        "Nithin",
//        "Wendy",
//        "Ivy",
//        "Richard"
//    ]
    
    
    
//    ForEach(namedFonts) { namedFont in
//        Text(namedFont.name)
//            .font(namedFont.font)
//    }

    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
    //                HeaderView()
                    
    //                VStack {
    //                    NavigationLink(destination: SecondView(), label: {Text("Hello")})
    //
    //                    VStack {
    //                        Text("Counter: \($viewModel.counter.wrappedValue)")
    //                        Button(action: viewModel.incrementCounter, label: {Text("Add Counter")})
    //                    }
    //                }.border(.blue)
    //                GameRowView(rowId: 1)
    //                List {
    //                    ForEach(id) { gameId in
    //                        GameRowView(rowId: gameId)
    //                    }
    //                }
                    
    //                List($namedFonts) { $namedFont in
    //                    namedFont
    //
    //                }
                    
    //                ForEach(namedFonts) { namedFont in
    //                    Text(namedFont.name)
    //                        .font(namedFont.font)
    //                }
                    ForEach(viewModel.games) { game in
                        NavigationLink(destination: SecondView(), label: {GameRowView(rowId: 0, game: game)
                            .padding(10)})
                        
                    }
                }
                .border(.red)
                .navigationTitle("Games")
                .padding()
                .frame(maxWidth: .infinity,
                       maxHeight: .infinity,
                       alignment: .top)
            }
//            .border(.yellow)
        }
            
    }
}

#Preview {
    GameHomeView()
}
