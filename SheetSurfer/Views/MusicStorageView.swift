//
//  MusicStorageView.swift
//  SheetSurfer
//
//  Created by Connor Marsh (student LM) on 4/6/21.
//  Copyright © 2021 Connor Marsh (student LM). All rights reserved.
//

import SwiftUI

struct MusicStorageView: View {
    
    @State var songs : [Song] = [Song(title: "Twinkle Twinkle Little Star", artist: "A. Hill", genre: "Heavy Metal"), Song(title: "Homebound", artist: "Connor Marsh", genre: "Pop"), Song()]
    
    var body: some View {
        ForEach(songs.indices) {i in
            SongCardView(song: self.$songs[i])
            .navigationBarTitle("Your Songs")
        }
    }
}

struct MusicStorageView_Previews: PreviewProvider {
    static var previews: some View {
        MusicStorageView()
    }
}
