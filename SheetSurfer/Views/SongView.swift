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
    var note:Font=Font.custom("MusiQwik", size: 36)
    var body: some View {
        
        VStack {
            
            Spacer()
            ZStack {
                
                VStack {
                    
                    Text("'&=4P==P=V==V=!==W==W==f==!==U==U==T==T==!").font(note)
                    
                    Text("'&==S==S==b=!==V==V==U==U=!==T==T==c=!").font(note)
                    
                    Text("'&=V==V=U==U!==T==T==c=!=P===P==V==V=!").font(note)
                    
                    Text("'&==W==W==f==!==U==U==T==T=!=S==S==>b=!").font(note)
                    
                    Text("'&=4P==P=V==V=!==W==W==f==!==U==U==T==T==!").font(note)
                    
                    Text("'&==S==S==b=!==V==V==U==U=!==T==T==c=!").font(note)
                    
                    Text("'&=V==V=U==U!==T==T==c=!=P===P==V==V=!").font(note)
                    
                    Text("'&==W==W==f==!==U==U==T==T=!=S==S==>b=!").font(note)
                    
                }
                
                
                
            }
            
            Spacer()
            
        }.navigationBarTitle(song.title)
    }
}

struct SongView_Previews: PreviewProvider {
    static var previews: some View {
        SongView(song: Binding.constant(Song()))
    }
}
