//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer?

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(for: sender.titleLabel)
    }
    
    func playSound(for textOfLabel: UILabel?) {
        guard let url = Bundle.main.url(forResource: textOfLabel?.text, withExtension: "wav") else { return }
        
        player = try! AVAudioPlayer(contentsOf: url)
        player?.play()
    }
}


