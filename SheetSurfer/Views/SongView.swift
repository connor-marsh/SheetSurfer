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
    var a:Color=Color("Blue3")
    var b:Color=Color.black
    
    
    
    @State var lineNum : Int  = -1
    var body: some View {
        
        
        VStack {
            Spacer()
            HStack {
                Spacer()
                Spacer()
                Spacer()
                Button(action: {
                    self.play()
                }) {
                    Image(systemName: "play")
                        .foregroundColor(.white)
                        .frame(width: 40.0, height: 40.0)
                        .background(Color("Blue3"))
                        .cornerRadius(8)
                }
                Button(action: {
                    self.pause()
                }) {
                    Image(systemName: "pause")
                        .foregroundColor(.white)
                        .frame(width: 40.0, height: 40.0)
                        .background(Color("Blue3"))
                        .cornerRadius(8)
                }
                Spacer()
            }
            Spacer()
            ZStack {
                
                VStack {
                    if (lineNum == 0) {
                        Rectangle().foregroundColor(.orange).frame(width: 300, height: 64).opacity(0.5)
                    }
                    else {
                        Rectangle().foregroundColor(.orange).frame(width: 300, height: 64).opacity(0)
                    }
                    
                    if (lineNum == 1) {
                        Rectangle().foregroundColor(.orange).frame(width: 300, height: 64).opacity(0.5)
                    }
                    else {
                        Rectangle().foregroundColor(.orange).frame(width: 300, height: 64).opacity(0)
                    }
                    
                    if (lineNum == 2) {
                        Rectangle().foregroundColor(.orange).frame(width: 300, height: 64).opacity(0.5)
                    }
                    else {
                        Rectangle().foregroundColor(.orange).frame(width: 300, height: 64).opacity(0)
                    }
                    
                    if (lineNum == 3) {
                        Rectangle().foregroundColor(.orange).frame(width: 300, height: 64).opacity(0.5)
                    }
                    else {
                        Rectangle().foregroundColor(.orange).frame(width: 300, height: 64).opacity(0)
                    }
                    
                    if (lineNum == 4) {
                        Rectangle().foregroundColor(.orange).frame(width: 300, height: 64).opacity(0.5)
                    }
                    else {
                        Rectangle().foregroundColor(.orange).frame(width: 300, height: 64).opacity(0)
                    }
                    
                    if (lineNum == 5) {
                        Rectangle().foregroundColor(.orange).frame(width: 300, height: 64).opacity(0.5)
                    }
                    else {
                        Rectangle().foregroundColor(.orange).frame(width: 300, height: 64).opacity(0)
                    }
                    
                    if (lineNum == 6) {
                        Rectangle().foregroundColor(.orange).frame(width: 300, height: 64).opacity(0.5)
                    }
                    else {
                        Rectangle().foregroundColor(.orange).frame(width: 300, height: 64).opacity(0)
                    }
                    
                    if (lineNum == 7) {
                        Rectangle().foregroundColor(.orange).frame(width: 300, height: 64).opacity(0.5)
                    }
                    else {
                        Rectangle().foregroundColor(.orange).frame(width: 300, height: 64).opacity(0)
                    }
                    
                    Spacer()
                    Spacer()
                    
                }
                
                VStack {
                    
                    Text("'&=4P==P=V==V=!==W==W==f==!==U==U==T==T==!").font(note).foregroundColor(b).onTapGesture(count: 1) {
                        self.lineNum += 1
                    }
                    
                    Text("'&==S==S==b=!==V==V==U==U=!==T==T==c=!").font(note).foregroundColor(b).onTapGesture(count: 1) {
                        self.lineNum -= 1
                    }
                    
                    Text("'&=V==V=U==U!==T==T==c=!=P===P==V==V=!").font(note).foregroundColor(b)
                    
                    Text("'&==W==W==f==!==U==U==T==T=!=S==S==>b=!").font(note).foregroundColor(b)
                    
                    Text("'&=4P==P=V==V=!==W==W==f==!==U==U==T==T==!").font(note).foregroundColor(b)
                    
                    Text("'&==S==S==b=!==V==V==U==U=!==T==T==c=!").font(note).foregroundColor(b)
                    
                    Text("'&=V==V=U==U!==T==T==c=!=P===P==V==V=!").font(note).foregroundColor(b)
                    
                    Text("'&==W==W==f==!==U==U==T==T=!=S==S==>b=!").font(note).foregroundColor(b)
                    
                }
                
                
                
            }
            
            Spacer()
            
            
        }.navigationBarTitle(song.title)
    }
    
    func play() {
        self.lineNum += 1
    }
    
    func pause() {
        self.lineNum = -1
    }
    
    func delayWithSeconds(_ seconds: Double, completion: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            completion()
        }
    }
    
    /*let A = Note(name: "A", pitch: 0)
     let As = Note(name: "As", pitch: 0)
     let B = Note(name: "B", pitch: 0)
     let C = Note(name: "C", pitch: 0)
     let Cs = Note(name: "Cs", pitch: 0)
     let D = Note(name: "D", pitch: 0)
     let Ds = Note(name: "Ds", pitch: 0)
     let E = Note(name: "E", pitch: 0)
     let F = Note(name: "F", pitch: 0)
     let Fs = Note(name: "Fs", pitch: 0)
     let G = Note(name: "G", pitch: 0)
     let Gs = Note(name: "Gs", pitch: 0)
     
     var twinkleMusic : [TimeStep] = [TimeStep(length: 4, notes: [C]), TimeStep(length: 4, notes: [C]), TimeStep(length: 4, notes: [G]), TimeStep(length: 4, notes: [G]), TimeStep(length: 4, notes: [A]), TimeStep(length: 4, notes: [A]), TimeStep(length: 2, notes: [G]), TimeStep(length: 4, notes: [F]), TimeStep(length: 4, notes: [F]), TimeStep(length: 4, notes: [E]), TimeStep(length: 4, notes: [E]), TimeStep(length: 4, notes: [D]), TimeStep(length: 4, notes: [D]), TimeStep(length: 2, notes: [C]), TimeStep(length: 4, notes: [G]), TimeStep(length: 4, notes: [G]), TimeStep(length: 4, notes: [F]), TimeStep(length: 4, notes: [F]), TimeStep(length: 4, notes: [E]), TimeStep(length: 4, notes: [E]), TimeStep(length: 2, notes: [D]), TimeStep(length: 4, notes: [G]), TimeStep(length: 4, notes: [G]), TimeStep(length: 4, notes: [F]), TimeStep(length: 4, notes: [F]),TimeStep(length: 4, notes: [E]), TimeStep(length: 4, notes: [E]), TimeStep(length: 2, notes: [D]), TimeStep(length: 4, notes: [C]), TimeStep(length: 4, notes: [C]), TimeStep(length: 4, notes: [G]), TimeStep(length: 4, notes: [G]), TimeStep(length: 4, notes: [A]), TimeStep(length: 4, notes: [A]), TimeStep(length: 2, notes: [G])];
     
     
     */
    //let song = Song(title: "Test", artist: "Me", genre: "N/A", music: twinkleMusic)
    
    
    
    func findPosition(position: Int, song: [TimeStep], recent: [TimeStep]) -> Int {
        
        var maxScore = 0.0
        var maxIndex = 0
        for i in 0..<song.count {
            
            let diffPosition = i - position
            
            var matches = 0
            //var consecMatches = 0
            //var maxConsecMatches = 0
            
            for J in 0..<recent.count {
                
                let j = recent.count - J - 1
                
                if i - j >= 0 {
                    if song[i-j].notes[0].name == recent[J].notes[0].name {
                        matches += 1*(J*J+1)
                        //consecMatches += 1
                        //maxConsecMatches = max(consecMatches, maxConsecMatches)
                        
                    }
                    else {
                        //consecMatches = 0
                    }
                }
                
            }
            
            let score = Double(matches) + Double(song.count - abs(diffPosition))
            if score > maxScore {
                maxScore = score
                maxIndex = i
            }
        }
        
        return maxIndex
    }
    /*
     var currentPosition = 4
     var recent : [TimeStep] = []*/
    
}



struct SongView_Previews: PreviewProvider {
    static var previews: some View {
        SongView(song: Binding.constant(Song()))
    }
}
