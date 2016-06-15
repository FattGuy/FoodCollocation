//
//  FoodField.swift
//  FoodCollocation
//
//  Created by Feng Chang on 6/14/16.
//  Copyright © 2016 Feng Chang. All rights reserved.
//

import UIKit
import Gloss

class FoodField: Decodable {

    var id: String?
    
    init() {
        
    }
    
    required init?(json: JSON) {
        self.id = "item_id" <~~ json
    }

}
