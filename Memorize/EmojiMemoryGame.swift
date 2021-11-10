//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Matheus Prada on 09/11/21.
//

import SwiftUI

class EmojiMemoryGame {
    private var model : MemoryGame<String> = EmojiMemoryGame.createEmojiGame()
    
    static func createEmojiGame() -> MemoryGame<String> {
        let emojis = [ "👻", "🎃" ]
        return MemoryGame<String>(pairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    func choose (card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
