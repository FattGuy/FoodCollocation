//
//  NavController.swift
//  FoodCollocation
//
//  Created by Feng Chang on 5/26/16.
//  Copyright © 2016 Feng Chang. All rights reserved.
//

import UIKit

class NavController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let backBarButtonItem = UIBarButtonItem.init(title: "Back", style: UIBarButtonItemStyle.Plain, target: self, action: nil)
        navigationBar.topItem!.backBarButtonItem = backBarButtonItem
        self.navigationBar.tintColor = UIColor.blueColor()
        self.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.blackColor()]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
