//
//  TranslatorViewController.swift
//  MorseCode
//
//  Created by Ryan Grogger on _2/2/_6.
//  Copyright © 2._6 Ryan Grogger. All rights reserved.
//

import UIKit
import AVFoundation

class TranslatorViewController: UIViewController
{
    
    
    @IBOutlet weak var inputSentence: UITextField!

    @IBOutlet weak var translated: UILabel!
    
    var characters = [character(letter: "a",sequence: "._  "), character(letter: "b",sequence: " _...  "),character(letter: "c",sequence: "_._.  "), character(letter: "d",sequence: "_..  "), character(letter: "e",sequence: ".  "), character(letter: "f",sequence: ".._.  "), character(letter: "g",sequence: "_ _.  "), character(letter: "h",sequence: "....  "),character(letter: "i",sequence: "..  "),  character(letter: "j",sequence: "._ _ _  "),character(letter: "k",sequence: "_._  "), character(letter: "l",sequence: "._..  "), character(letter: "m",sequence: "_ _  "), character(letter: "n",sequence: "_.  "), character(letter: "o",sequence: "_ _ _  "), character(letter: "p",sequence: "._ _.  "), character(letter: "q",sequence: "_ _._  "), character(letter: "r",sequence: "._.  "), character(letter: "s",sequence: "...  "), character(letter: "t",sequence: "_  "), character(letter: "u",sequence: ".._  "), character(letter: "v",sequence: "..._  "), character(letter: "w",sequence: "._ _  "), character(letter: "x",sequence: "_.._  "), character(letter: "y",sequence: "_._ _  "), character(letter: "z",sequence: "_ _..  "), character(letter: "1",sequence: "._ _ _ _  "), character(letter: "2",sequence: ".._ _ _  "), character(letter: "3",sequence: "..._ _  "), character(letter: "4",sequence: "...._  "), character(letter: "5",sequence: ".....  "), character(letter: "6",sequence: "_....  "), character(letter: "7",sequence: "_ _...  "), character(letter: "8",sequence: "_ _ _..  "), character(letter: "9",sequence: "_ _ _ _.  "), character(letter: "0",sequence: "_ _ _ _ _  "), character(letter: " ",sequence: "   ")]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func translate(_ sender: Any)
    {
        for letter in (inputSentence.text?.characters)!
        {
            for character in characters
            {
                if character.letter == letter.description
                {
                    translated.text? += character.sequence
                }
            }
        }
    }
    @IBAction func flashlight(_ sender: Any)
    {
        toggleFlash()
    }
    
    func toggleFlash()
    {
        if let device = AVCaptureDevice.defaultDevice(withMediaType: AVMediaTypeVideo), device.hasTorch
        {
            do
            {
                try device.lockForConfiguration()
                let torchOn = !device.isTorchActive
                try device.setTorchModeOnWithLevel(1.0)
                device.torchMode = torchOn ? .on : .off
                device.unlockForConfiguration()
            }
            catch
            {
                print("error")
            }
        }
    }
}
