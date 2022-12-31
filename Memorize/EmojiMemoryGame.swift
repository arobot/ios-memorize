//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by 罗威 on 2022/12/31.
//

import SwiftUI

class EmojiMemoryGame {
    static let emojis = ["🚃","🚀","🚁","🚜","🚎","🚂","🚅","🛶","🛰️","🛳️","🚌","✈️","🛩️","🚔","🚆","🛸","🚟","🏍️","🛺","🚘","🚡","🚉","⛵️","⛴️"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    private var model: MemoryGame<String> = createMemoryGame()
        
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
