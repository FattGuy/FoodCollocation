//
//  ViewController.swift
//  FoodCollocation
//
//  Created by Feng Chang on 5/26/16.
//  Copyright © 2016 Feng Chang. All rights reserved.
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

    @IBAction func buttonClicked(sender: UIButton) {
        self.performSegueWithIdentifier("toSecondPageSegue", sender: sender)
    }
}

