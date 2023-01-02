//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by 罗威 on 2022/12/31.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    private static let emojis = ["🚃","🚀","🚁","🚜","🚎","🚂","🚅","🛶","🛰️","🛳️","🚌","✈️","🛩️","🚔","🚆","🛸","🚟","🏍️","🛺","🚘","🚡","🚉","⛵️","⛴️"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame(numberOfPairsOfCards: 8) { pairIndex in
            emojis[pairIndex]
        }
    }

    @Published private var model = createMemoryGame()
        
    var cards: Array<Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: Card){
        model.choose(card)
    }
}
