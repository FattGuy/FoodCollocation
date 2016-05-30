//
//  FoodTimeController.swift
//  FoodCollocation
//
//  Created by Feng Chang on 5/27/16.
//  Copyright © 2016 Feng Chang. All rights reserved.
//

import UIKit

class FoodTimeController: UIViewController {

    
    @IBOutlet weak var breakfirstButton: UIButton!
    @IBOutlet weak var lunchButton: UIButton!
    @IBOutlet weak var dinnerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //breakfirstButton.layer.masksToBounds = true
        breakfirstButton.layer.mask = shapeButton()
        breakfirstButton.layer.borderWidth = 1.0
        
        lunchButton.layer.masksToBounds = true
        lunchButton.layer.cornerRadius = 10
        lunchButton.layer.borderWidth = 1.0
        
        dinnerButton.layer.masksToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressed(sender: UIButton) {
        self.performSegueWithIdentifier("toDetailChoise", sender: sender)
    }

    func shapeButton() -> CAShapeLayer {
        let buttonShape = CAShapeLayer()
        let bepath:UIBezierPath = UIBezierPath(roundedRect: buttonShape.bounds, byRoundingCorners: UIRectCorner.TopLeft, cornerRadii: CGSize(width: 2.5, height: 2.5))
        UIColor.yellowColor().setStroke()
        buttonShape.path = bepath.CGPath
        
        return buttonShape
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
