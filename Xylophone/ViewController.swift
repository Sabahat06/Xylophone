//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//
import AVFoundation
import UIKit

class ViewController: UIViewController {
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func KeyPressed(_ sender: UIButton) {
        playSound(currentSoundValue: sender.currentTitle ?? "")
    }
    
    func playSound(currentSoundValue: String) {
        let url = Bundle.main.url(forResource: currentSoundValue, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
    player?.play()
                
    }


}

