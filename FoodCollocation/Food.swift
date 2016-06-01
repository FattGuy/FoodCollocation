//
//  Food.swift
//  FoodCollocation
//
//  Created by Feng Chang on 5/27/16.
//  Copyright © 2016 Feng Chang. All rights reserved.
//

import UIKit
import Gloss

class Food: Decodable {
    
    var calorie: Int?
    var name: String?
    
    required init?(json: JSON) {
        self.calorie = "calorie" <~~ json
        self.name = "name" <~~ json
    }
}
