//
//  Song.swift
//  SheetSurfer
//
//  Created by Connor Marsh (student LM) on 4/6/21.
//  Copyright © 2021 Connor Marsh (student LM). All rights reserved.
//

import Foundation

class Song : Identifiable {
    
    var id = UUID()
    var title : String
    var artist : String
    var genre : String
    var notes : [TimeStep]
    
    init(title : String = "SongTitle", artist : String = "SongArtist", genre : String = "SongGenre", notes : [TimeStep] = [TimeStep()]) {
        self.title = title
        self.artist = artist
        self.genre = genre
        self.notes = notes
    }
}
