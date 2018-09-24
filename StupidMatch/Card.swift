//
//  Card.swift
//  StupidMatch
//
//  Created by Viraj Jagale on 13/08/18.
//  Copyright © 2018 Viraj Jagale. All rights reserved.
//

import Foundation

struct Card
{
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    static var identifierCount = 0
    
    static func getUniqueIdentifier() -> Int
    {
        identifierCount += 1
        return(identifierCount)
    }
    
    init()
    {
        self.identifier = Card.getUniqueIdentifier()
    }
}
