//
//  Note.swift
//  SheetSurfer
//
//  Created by Connor Marsh (student LM) on 4/21/21.
//  Copyright © 2021 Connor Marsh (student LM). All rights reserved.
//

import Foundation

struct Note {
    
    var name : String
    var pitch : Int
    
    init(name : String = "A", pitch : Int = 440) {
        self.name = name
        self.pitch = pitch
    }
    
}
