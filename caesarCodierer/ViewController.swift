//
//  ViewController.swift
//  caesarCodierer
//
//  Created by star on 06.01.22.
//

import UIKit

class ViewController: UIViewController {
    
    let encode: [Character : String] =
            ["a" : "b",
             "b" : "c",
             "c" : "d",
             "d" : "e",
             "e" : "f",
             "f" : "g",
             "g" : "h",
             "h" : "i",
             "i" : "j",
             "j" : "k",
             "k" : "l",
             "l" : "m",
             "m" : "n",
             "n" : "o",
             "o" : "p",
             "p" : "q",
             "q" : "r",
             "r" : "s",
             "s" : "t",
             "t" : "u",
             "u" : "v",
             "v" : "w",
             "w" : "x",
             "x" : "y",
             "y" : "z",
             "z" : "a",
             " " : " "]

    @IBOutlet weak var textInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    @IBAction func encodeButtonTapped(_ sender: UIButton) {
        if textInput.text != "" {
            let currentInput = textInput.text!
            var outputString: String?
            
            for element in currentInput {
                if encode[element] != nil && outputString != nil {
                    outputString = outputString! + encode[element]!
                } else if outputString == nil && encode[element] != nil {
                    outputString = encode[element]!
                }
            }
            
            textInput.text = outputString
        }
    }
    
    
}

