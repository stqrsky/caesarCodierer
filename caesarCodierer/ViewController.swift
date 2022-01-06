//
//  ViewController.swift
//  caesarCodierer
//
//  Created by star on 06.01.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func encodeButtonTapped(_ sender: UIButton) {
        print(textInput.text as Any)
    }
    
    
}

