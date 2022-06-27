//
//  EmojiMemoryGame.swift
//  Xpointer
//
//  Created by Guilherme Douglas Beitum on 27/06/22.
//

import Foundation

class EmojiMemoryGame: ObservableObject {
        @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
        
       private static func createMemoryGame() -> MemoryGame<String> {
            let emojis = ["👻", "🎃", "🕷"]
            return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
                return emojis[pairIndex]
            }
        }
    
        var cards: Array<MemoryGame<String>.Card> {
            model.cards
        }
        
        func choose(card: MemoryGame<String>.Card){
            objectWillChange.send()
            model.choose(card: card)
        }
    }
