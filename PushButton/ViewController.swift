//
//  ViewController.swift
//  PushButton
//
//  Created by apple on 7/3/17.
//  Copyright © 2017 Sylvia+Alan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var count:Int = 0
    @IBOutlet weak var pushMeButton: UIButton!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var fuzzyDuckyLabel: UILabel!
    @IBAction func buttonPushed(_ sender: UIButton) {
        count += 1
        countLabel.text = "Count: \(count)"
        if count%15 == 0 {
            fuzzyDuckyLabel.text = "FuzzyDucky"
        } else if count%5 == 0 {
            fuzzyDuckyLabel.text = "Ducky"
        } else if count%3 == 0 {
            fuzzyDuckyLabel.text = "Fuzzy"
        } else {
            fuzzyDuckyLabel.text = ""
        }
    }
}

