//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by 罗威 on 2022/12/31.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    static let emojis = ["🚃","🚀","🚁","🚜","🚎","🚂","🚅","🛶","🛰️","🛳️","🚌","✈️","🛩️","🚔","🚆","🛸","🚟","🏍️","🛺","🚘","🚡","🚉","⛵️","⛴️"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame(numberOfPairsOfCards: 5) { pairIndex in
            emojis[pairIndex]
        }
    }

    @Published private var model: MemoryGame<String> = createMemoryGame()
        
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card){
        model.choose(card)
    }
}
