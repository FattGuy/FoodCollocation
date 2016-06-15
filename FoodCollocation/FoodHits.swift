//
//  FoodHits.swift
//  FoodCollocation
//
//  Created by Feng Chang on 6/9/16.
//  Copyright © 2016 Feng Chang. All rights reserved.
//

import UIKit
import Gloss

class FoodHits: Decodable {
    var index: String?
    var type: String?
    var id: String?
    var score: Double?
    var fields: FoodField?
    
    init() {
        
    }

    required init?(json: JSON) {
        self.index = "_index" <~~ json
        self.type = "_type" <~~ json
        self.id = "_id" <~~ json
        self.score = "_score" <~~ json
        self.fields = "fields" <~~ json
    }
}
