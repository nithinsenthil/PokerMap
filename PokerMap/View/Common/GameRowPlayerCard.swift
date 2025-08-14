//
//  GameRowPlayerCard.swift
//  PokerMap
//
//  Created by Nithin Senthil on 8/4/25.
//

import SwiftUI

struct GameRowPlayerCard: View {
    var text: String
    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(.brown)
                .opacity(0.4)
                .frame(width: width,
                       height: height)
            Text(text)
        }
        .padding(3)
    }
}

#Preview {
    GameRowPlayerCard(text: "Sample Text", width: 400, height: 100)
}
