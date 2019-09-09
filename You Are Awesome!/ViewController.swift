//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Ellana Lawrence on 8/26/19.
//  Copyright © 2019 Ellana Lawrence. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var awesomeImageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    var awesomePlayer = AVAudioPlayer()
    var index = -1
    var imageIndex = -1
    var soundIndex = -1
    let numberOfImages = 10
    let numberOfSounds = 6
    //Code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        print("The View Loaded!")
        // Do any additional setup after loading the view.
    }

    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int {
        var newIndex: Int
        repeat{
            newIndex = Int.random(in: 0..<maxValue)
        } while lastNumber == newIndex
        return newIndex
    }
    
    
    func playSound(soundName: String, audioPlayer: inout AVAudioPlayer) {
        // can we load in the file soundName?
        if let sound = NSDataAsset(name: soundName) {
            //check if sound.data is a soundfile
            do{
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                //if sound.data is not a valid audio file
                print("ERROR: data in \(soundName) couldn't be played as a sound.")
            }
            
        }else{
            //if reading in the NSDataAsset didn't work, the developer / report the error.
            print("ERROR: file \(soundName) didn't load.")
        }
        
        
    }
    
    
    

    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        let messages = ["You Are Awesome!",
                        "You Are Great!",
                        "You Are Fantastic!",
                        "When the Genuis Bar needs help, they call you",
                        "You brighten my day!",
                        "You make me smile!",
                        "You are da bomb!",
                        "Hey, fabulous!",
                        "You are tremendous!",
                        "You've got the design skills of Jony Ive!",
                        "I can't wait to download your app!"]
    
//        var newIndex = -1
        
        //Show a message
        index = nonRepeatingRandom (lastNumber: index, maxValue: messages.count)
        messageLabel.text = messages[index]
        
        
        
        
        //Show an image
        imageIndex = nonRepeatingRandom (lastNumber: imageIndex, maxValue: numberOfImages)
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
        
    
        
        //Get a random numner to use in our soundName file
        soundIndex = nonRepeatingRandom(lastNumber: soundIndex, maxValue: numberOfSounds)
        
        //Play sound
        let soundName = "sound\(soundIndex)"
        playSound(soundName: soundName, audioPlayer: &awesomePlayer)

     
    
        
        
     //   messageLabel.text = messages.randomElement()!
        
//       // messageLabel.text = messages[0]
//        messageLabel.text = messages[index]
//
//        if index == messages.count-1 {
//            index = 0
//        } else {
//            index = index+1
//        }
//
//
        
        
        /*
        let message1 = "You Are Fantastic!!!"
        let message2 = "You Are Great!"
        let message3 = "You are Amazing!"
        
        
        if messageLabel.text == message1 {
            messageLabel.text = message2
        } else if messageLabel.text == message2 {
            messageLabel.text = message3
        } else {
            messageLabel.text = message1
        } */
    }
    
    
}

