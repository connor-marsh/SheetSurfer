//
//  Audio_Controller.swift
//  SheetSurfer
//
//  Created by Andrew Hill (student LM) on 3/16/21.
//  Copyright © 2021 Andrew Hill (student LM). All rights reserved.
//
// to start the engine, do 'pitchEngine.start()'.
// to stop, it's 'pitchEngine.stop()'.
// to get the last note played, just use the function and pass it a pitch engine that is currently running.


import UIKit
import AVFoundation
import Beethoven
import Pitchy

class Audio_Controller: AVAudioPlayerDelegate , AVAudioRecorderDelegate, SNAudio {
    
    // Creates a configuration for the input signal tracking (by default).
    let config = Config(
      bufferSize: 4096,
      estimationStrategy: .yin
    )
    
    let pitchEngine = PitchEngine(config: config, delegate: pitchEngineDelegate)
    
    func pitchEngine(_ pitchEngine: PitchEngine, didReceivePitch pitch: Pitch) {
        noteLabel.text = pitch.note.string

        let offsetPercentage = pitch.closestOffset.percentage
        let absOffsetPercentage = abs(offsetPercentage)
        var note:(String,float) = (pitch.note.string, absOffsetPercentage)
        
        return note
    }
}
