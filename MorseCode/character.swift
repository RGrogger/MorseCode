//
//  character.swift
//  MorseCode
//
//  Created by Ryan Grogger on 12/2/16.
//  Copyright © 2016 Ryan Grogger. All rights reserved.
//

import UIKit

class character: NSObject
{
    var letter : String
    var sequence : String
    
    init(letter : String, sequence: String)
    {
        self.letter = letter
        self.sequence = sequence
    }
}
