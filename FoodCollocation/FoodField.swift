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
    var itemName: String?
    var brandName: String?
    var servSizeQty: Int?
    var servSizeUnit: String?
    
    init() {
        
    }
    
    required init?(json: JSON) {
        self.id = "item_id" <~~ json
        self.itemName = "item_name" <~~ json
        self.brandName = "USDA" <~~ json
        self.servSizeQty = "nf_serving_size_qty" <~~ json
        self.servSizeUnit = "nf_serving_size_unit" <~~ json
    }
}
