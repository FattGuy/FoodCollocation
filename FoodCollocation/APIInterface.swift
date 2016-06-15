//
//  APIInterface.swift
//  FoodCollocation
//
//  Created by Feng Chang on 5/31/16.
//  Copyright © 2016 Feng Chang. All rights reserved.
//

import UIKit
import Foundation

class APIInterface: NSObject {
    
    static let HOST = "https://api.nutritionix.com/v1_1/"
    static let SEARCH_API = "search/"
    static let ITEM_API = "item?id="
    
    static let SEARCH_RANGE = "?results=0%3A1"//0-1
    static let APPID = "&appId=209897d3"
    static let APPKEY = "&appKey=6e68497f5d5a32517608ea097a738bec"
    
}
