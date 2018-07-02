//
//  ViewController.swift
//  Diceee
//
//  Created by Vaibhav Nandam on 7/2/18.
//  Copyright © 2018 Vaibhav Nandam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDicee()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDicee()
        
    }
    
    func updateDicee(){
        
        diceImage1.image = UIImage(named: diceArray[Int(arc4random_uniform(6))])
        diceImage2.image = UIImage(named: diceArray[Int(arc4random_uniform(6))])
    
    }
    
}

