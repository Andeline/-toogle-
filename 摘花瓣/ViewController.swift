//
//  ViewController.swift
//  摘花瓣
//
//  Created by 蔡佳穎 on 2021/5/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var loveLabel: UILabel!
    @IBOutlet weak var petalBtn: UIButton!
    
    var number = Int.random(in: 5...14)
    var isLove = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loveLabel.text = "他到底愛不愛我呢？"
        loveLabel.center = CGPoint(x: view.bounds.width / 2, y: 298)
        loveLabel.sizeToFit()
    }

    @IBAction func pickPetals(_ sender: UIButton) {
    
        let synthesizer = AVSpeechSynthesizer()
        
        if isLove {
            loveLabel.text = "愛我"
            let speak = AVSpeechUtterance(string: loveLabel.text!)
            speak.voice = AVSpeechSynthesisVoice(language: "zh-TW")
            speak.pitchMultiplier = 1.2
            synthesizer.speak(speak)
            loveLabel.center = CGPoint(x: view.bounds.width / 2, y: 298)
        } else {
            loveLabel.text = "不愛我"
            let speak = AVSpeechUtterance(string: loveLabel.text!)
            speak.voice = AVSpeechSynthesisVoice(language: "zh-TW")
            speak.pitchMultiplier = 1.2
            synthesizer.speak(speak)
            loveLabel.center = CGPoint(x: view.bounds.width / 2, y: 298)
        }
        
        if number > 0 {
            isLove.toggle()
        } else {
            petalBtn.isHidden = true
        }
        number -= 1
    }
    
    @IBAction func playAgain(_ sender: UIButton) {
        number = Int.random(in: 5...20)
        petalBtn.isHidden = false
        loveLabel.text = "他到底愛不愛我呢？"
        loveLabel.center = CGPoint(x: view.bounds.width / 2, y: 298)
        loveLabel.sizeToFit()
    }
}

