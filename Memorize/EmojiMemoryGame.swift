//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by įŊå¨ on 2022/12/31.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    private static let emojis = ["đ","đ","đ","đ","đ","đ","đ","đļ","đ°ī¸","đŗī¸","đ","âī¸","đŠī¸","đ","đ","đ¸","đ","đī¸","đē","đ","đĄ","đ","âĩī¸","â´ī¸"]
    
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
