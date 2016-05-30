//
//  Food.swift
//  FoodCollocation
//
//  Created by Feng Chang on 5/27/16.
//  Copyright © 2016 Feng Chang. All rights reserved.
//

import UIKit

class Food: NSObject {
    
    var calorie: Int?
    var name: String?
    
    init(name: String, calorie: Int) {
        self.name = name
        self.calorie = calorie
    }
}
