//
//  TimeStep.swift
//  SheetSurfer
//
//  Created by Connor Marsh (student LM) on 4/6/21.
//  Copyright © 2021 Connor Marsh (student LM). All rights reserved.
//

import Foundation

struct TimeStep {
    
    var length : Int
    var notes : [Note]
    
    init(length : Int = 1, notes : [Note] = []) {
        self.length = length
        self.notes = notes
    }
    
}
