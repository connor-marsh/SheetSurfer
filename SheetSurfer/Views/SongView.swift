//
//  SongView.swift
//  SheetSurfer
//
//  Created by Connor Marsh (student LM) on 4/7/21.
//  Copyright © 2021 Connor Marsh (student LM). All rights reserved.
//

import SwiftUI

struct SongView: View {
    @Binding var song : Song
    var body: some View {
        Text("Damn this song is kinda songy tho").navigationBarTitle(song.title)
    }
}

struct SongView_Previews: PreviewProvider {
    static var previews: some View {
        SongView(song: Binding.constant(Song()))
    }
}
