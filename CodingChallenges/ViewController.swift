//
//  ViewController.swift
//  CodingChallenges
//
//  Created by Luis Galvan on 2/22/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //assert(challenge1(input: "No duplicatess") == true, "Challenge 1 failed")
    }
    
    
    func challenge1(input: String) -> Bool {
        
        var usedLetters = [Character]()
        
        for letter in input {
            if usedLetters.contains(letter) {
                return false
            }
            
            usedLetters.append(letter)
        }
        
        return true
    }
}

