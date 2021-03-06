//
//  FoodPurposeController.swift
//  FoodCollocation
//
//  Created by Feng Chang on 5/27/16.
//  Copyright © 2016 Feng Chang. All rights reserved.
//

import UIKit

class FoodPurposeController: UIViewController {

    @IBOutlet weak var healthButton: UIButton!
    @IBOutlet weak var tasteButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        healthButton.layer.masksToBounds = true
        healthButton.layer.cornerRadius = 10
        healthButton.layer.borderWidth = 1.0
        
        tasteButton.layer.masksToBounds = true
        tasteButton.layer.cornerRadius = 10
        tasteButton.layer.borderWidth = 1.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressed(sender: UIButton) {
        self.performSegueWithIdentifier("toFoodTime", sender: sender)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
