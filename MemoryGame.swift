//
//  MemoryGame.swift
//  Memorize
//
//  Created by Matheus Prada on 09/11/21.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose (card: Card) {
            print("card escolhido \(card)")
    }
    
    init(pairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<pairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}
