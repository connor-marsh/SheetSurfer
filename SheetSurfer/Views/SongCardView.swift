//
//  SongCardView.swift
//  SheetSurfer
//
//  Created by Connor Marsh (student LM) on 4/7/21.
//  Copyright © 2021 Connor Marsh (student LM). All rights reserved.
//

import SwiftUI

struct SongCardView: View {
    
    @Binding var song : Song
    
    var body: some View {
        NavigationLink(destination: SongView(song: $song)) {
            HStack(spacing: 9.0) {
                Text("\(song.title)")
                    .font(.title)
                VStack {
                    Text("\(song.artist)")
                    .font(.footnote)
                    Text("\(song.genre)")
                    .font(.footnote)
                }
                
            }
            .padding(.horizontal)
            .frame(width: 300.0, height: 80.0)
        }
        
    }
}

struct SongCardView_Previews: PreviewProvider {
    static var previews: some View {
        SongCardView(song: Binding.constant(Song()))
    }
}
