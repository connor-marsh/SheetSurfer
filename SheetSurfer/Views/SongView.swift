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
        
        VStack {
            
            Spacer()
            Text("hi")
            Spacer()
            ZStack {
                
                VStack {
                    
                    Rectangle().frame(width: 500.0, height: 2.0)
                    Rectangle().foregroundColor(.clear).frame(width:400, height: 3)
                    Rectangle().frame(width: 500.0, height: 2.0)
                    Rectangle().foregroundColor(.clear).frame(width:400, height: 3)
                    Rectangle().frame(width: 500.0, height: 2.0)
                    Rectangle().foregroundColor(.clear).frame(width:400, height: 3)
                    Rectangle().frame(width: 500.0, height: 2.0)
                    Rectangle().foregroundColor(.clear).frame(width:400, height: 3)
                    Rectangle().frame(width: 500.0, height: 2.0)
                        
                    
                }
                
                VStack {
                    
                    HStack {
                        Rectangle().frame(width:10, height:10).cornerRadius(5)
                        Rectangle().frame(width:10, height:10).cornerRadius(5)
                    }
                    HStack {
                        Rectangle().frame(width:10, height:10).cornerRadius(5)
                        Rectangle().frame(width:10, height:10).cornerRadius(5)
                    }
                    HStack {
                        Rectangle().frame(width:10, height:10).cornerRadius(5)
                        Rectangle().frame(width:10, height:10).cornerRadius(5)
                    }
                    HStack {
                        Rectangle().frame(width:10, height:10).cornerRadius(5)
                        Rectangle().frame(width:10, height:10).cornerRadius(5)
                    }
                    
                    
                }
                
            }
            
            Spacer()
            
            Text("Damn this song is kinda songy tho")
            
            Spacer()
            
        }.navigationBarTitle(song.title)
    }
}

struct SongView_Previews: PreviewProvider {
    static var previews: some View {
        SongView(song: Binding.constant(Song()))
    }
}
