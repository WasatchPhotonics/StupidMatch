//
//  StupidMatch.swift
//  StupidMatch
//
//  Created by Viraj Jagale on 13/08/18.
//  Copyright © 2018 Viraj Jagale. All rights reserved.
//

import Foundation

class StupidMatch
{
    var cards = [Card]()
    var indexOfOnlyFaceUpCard: Int?
    
    func chooseCard(at index: Int)
    {
        if !cards[index].isMatched
        {
            if let matchIndex = indexOfOnlyFaceUpCard, matchIndex != index
            {
                if cards[matchIndex].identifier == cards[index].identifier
                {
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFaceUp = true
                indexOfOnlyFaceUpCard = nil
            }
            else
            {
                for flipDownIndex in cards.indices
                {
                    cards[flipDownIndex].isFaceUp = false
                }
                cards[index].isFaceUp = true
                indexOfOnlyFaceUpCard = index
            }
        }
    }
    
    init(numOfPairs: Int)
    {
        for _ in 1...numOfPairs
        {
            let card = Card()
            cards += [card, card]
        }
        
    }
}
