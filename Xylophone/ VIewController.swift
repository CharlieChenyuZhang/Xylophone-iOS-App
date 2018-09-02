//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    // initialize audioPlayer
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        
        // play sound
        playSound(sender)
    }
    
    // a function that play sounds based on sender tag
    func playSound(_ sender: UIButton){
        // set up the soundURL given sender's tag
        let soundURL = Bundle.main.url(forResource: "note\(sender.tag)", withExtension: "wav")
        
        // set up the audio player given the soundURL
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        
        // play the sound
        audioPlayer.play()
    }
}

