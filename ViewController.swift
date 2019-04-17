//
//  ViewController.swift
//  Set-Up
//
//  Created by Project Exploration on 4/15/19.
//  Copyright © 2019 My_Name. All rights reserved.
//

import UIKit
// Step 4
import AVFoundation

class ViewController: UIViewController {

    //5 -
    var songPlayer = AVAudioPlayer()
   
    var hasBeenPaused = false
    
    //6 -
    func prepareSongAndSession() {
    
        do {
            //7-Insert the song from our bundle into our AVAudioPlayer
            /*
            let songURL = Bundle.main.path(forResource: "21 Savage - a lot ft. J. Cole", ofType: "mp3")!
            
            songPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: songURL))
            */
            
            songPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "21 Savage - a lot ft. J. Cole", ofType: "mp3")!))
            
        } catch let sessionError {
            print(sessionError)
        }
    }
    
       override func viewDidLoad() {
        super.viewDidLoad()
        //13
        prepareSongAndSession()
    }
    
    @IBAction func
        funcPlay(_ sender: Any) {
            //14
            songPlayer.play()
    }

    func Pause(_ sender: Any) {
        //16
        if songPlayer.isPlaying {
            songPlayer.pause()
            hasBeenPaused = true
        } else {
            hasBeenPaused = false
        }
    }
    
    @IBAction func Restart(_ sender: Any) {
        //17 -
        if songPlayer.isPlaying || hasBeenPaused {
            songPlayer.stop()
            songPlayer.currentTime = 0
            
            songPlayer.play()
        } else {
            songPlayer.play()
        }
    }
    
        }





