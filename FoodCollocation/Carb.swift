//
//  Carb.swift
//  FoodCollocation
//
//  Created by Feng Chang on 6/9/16.
//  Copyright © 2016 Feng Chang. All rights reserved.
//

import UIKit
import Gloss

class Carb: Decodable {
    var name: String?
    var calorie: String?
    
    required init?(json: JSON) {
        self.name = "item_name" <~~ json
        self.calorie = "nf_calories" <~~ json
    }
}
