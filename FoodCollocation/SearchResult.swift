//
//  SearchResult.swift
//  FoodCollocation
//
//  Created by Feng Chang on 6/9/16.
//  Copyright © 2016 Feng Chang. All rights reserved.
//

import UIKit
import Gloss

class SearchResult: Decodable {
    var totalhits: Double!
    var maxscore: Double!
    var hits = [FoodHits]?()
    
    init(){
        
    }
    
    required init?(json: JSON) {
        self.totalhits = "total_hits" <~~ json
        self.maxscore = "max_score" <~~ json
        self.hits = "hits" <~~ json
    }
}
