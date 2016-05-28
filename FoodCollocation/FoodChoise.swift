//
//  FoodChoise.swift
//  FoodCollocation
//
//  Created by Feng Chang on 5/27/16.
//  Copyright © 2016 Feng Chang. All rights reserved.
//

import UIKit

class FoodChoise: NSObject {
    var health: String?
    var taste: String?
    
    init(health: String, taste: String) {
        self.health = health
        self.taste = taste
    }
}
