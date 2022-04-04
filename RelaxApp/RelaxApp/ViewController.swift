//
//  ViewController.swift
//  RelaxApp
//
//  Created by Dias Karimov on 10.02.2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var player: AVAudioPlayer!
    @IBAction func pressedButtons(_ sender: UIButton) {
        let pressed = sender.currentTitle!
         print(pressed)
         playSound(soundName: pressed )
    }
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}

