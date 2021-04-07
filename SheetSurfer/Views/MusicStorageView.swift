//
//  MusicStorageView.swift
//  SheetSurfer
//
//  Created by Connor Marsh (student LM) on 4/6/21.
//  Copyright © 2021 Connor Marsh (student LM). All rights reserved.
//

import SwiftUI

struct MusicStorageView: View {
    
    @State var songs : [Song] = [Song(title: "The Entertainer", artist: "Scott Joplin", genre: "Rag"), Song(title: "Homebound", artist: "Connor Marsh", genre: "Shitty Pop"), Song()]
    
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
