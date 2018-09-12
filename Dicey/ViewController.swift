//
//  ViewController.swift
//  Dicey
//
//  Created by prabhanjan on 31/08/18.
//  Copyright © 2018 manorishi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageOne: UIImageView!
    @IBOutlet weak var diceImageTwo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assignRandomNumberToDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func rollButtonPressedAction(_ sender: UIButton) {
        assignRandomNumberToDiceImages()
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        assignRandomNumberToDiceImages()
    }
    
    func assignRandomNumberToDiceImages() {
        diceImageOne.image = UIImage(named: "dice\(String(arc4random_uniform(6)+1))")
        diceImageTwo.image = UIImage(named: "dice\(String(arc4random_uniform(6)+1))")
    }
    
    
}

