//
//  FoodFieldClient.swift
//  FoodCollocation
//
//  Created by Feng Chang on 6/14/16.
//  Copyright © 2016 Feng Chang. All rights reserved.
//

import UIKit
import MMErrorSwift

class FoodFieldClient: NSObject {
    class func getFieldForFood(itemId: String?, completion: (result: [FoodHits]?, error: MMStandardError?) -> Void) {
        
        let url = NSString(format: "%@", APIInterface.HOST + APIInterface.ITEM_API + itemId! + APIInterface.APPID + APIInterface.APPKEY)
        
        BaseHttpRequest.shareInstance.myGet(url) { (response, error) in
            
            guard error == nil else {
                completion(result: nil, error: error)
                return
            }
            
            var foodHits: [FoodHits]?
            let data = FoodHits.init(json: response as! Dictionary)
            foodHits?.append(data!)
            completion(result: foodHits, error: error)
        }
    }
}
