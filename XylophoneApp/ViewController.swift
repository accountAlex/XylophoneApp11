//
//  ViewController.swift
//  XylophoneApp
//
//  Created by "Hello, Swift!" on 16.08.2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        playSound(titleText: sender.currentTitle ?? "C")    }
    
    func playSound(titleText: String) {
        let url = Bundle.main.url(forResource: "C", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    

}

