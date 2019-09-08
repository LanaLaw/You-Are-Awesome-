//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Ellana Lawrence on 8/26/19.
//  Copyright © 2019 Ellana Lawrence. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    var index = 0
    //Code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        print("The View Loaded!")
        // Do any additional setup after loading the view.
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
        
        var newIndex: Int // declares but doesn't initialize newIndex 
        
        repeat{
            newIndex = Int.random(in: 0..<messages.count)
        } while index == newIndex
      
        index = newIndex
        messageLabel.text = messages[index]
        
        
        
        
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

