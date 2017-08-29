//
//  ViewController.swift
//  SayItForMe
//
//  Created by Ryan Morrison on 25/08/2017.
//  Copyright © 2017 egoDev. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    // import the text field
    @IBOutlet var txtField: UITextView!
    
    // set the speaking speed
    var utteranceRate = 0.5
    
    // declare variables to set the whole thing up
    let synth = AVSpeechSynthesizer()
    var myUtterance = AVSpeechUtterance(string: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // remove the keyboard on tap
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        
        view.addGestureRecognizer(tap)
        
    }

    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
   
    // play the text field contents
    @IBAction func playBtn(_ sender: UIButton) {
        
        myUtterance = AVSpeechUtterance(string: txtField.text)
        myUtterance.rate = Float(utteranceRate)
        synth.speak(myUtterance)
        
    }
    
    // stop the text field chatter
    @IBAction func stopBtn(_ sender: UIButton) {
        
        synth.stopSpeaking(at: .immediate)
        
    }
    
    @IBAction func btn1(_ sender: UIButton) {
        
        myUtterance = AVSpeechUtterance(string: "I've lost my voice")
        myUtterance.rate = Float(utteranceRate)
        synth.speak(myUtterance)
        
    }
    
    @IBAction func btn2(_ sender: UIButton) {
        
        myUtterance = AVSpeechUtterance(string: "Hi, how are you?")
        myUtterance.rate = Float(utteranceRate)
        synth.speak(myUtterance)
        
    }
    
    @IBAction func btn3(_ sender: UIButton) {
        
        myUtterance = AVSpeechUtterance(string: "What's for dinner?")
        myUtterance.rate = Float(utteranceRate)
        synth.speak(myUtterance)
        
    }
    
    @IBAction func btn4(_ sender: UIButton) {
        
        myUtterance = AVSpeechUtterance(string: "Can you help me?")
        myUtterance.rate = Float(utteranceRate)
        synth.speak(myUtterance)
        
    }
    


}

