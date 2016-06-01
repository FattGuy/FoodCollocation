//
//  FoodClient.swift
//  FoodCollocation
//
//  Created by Feng Chang on 5/31/16.
//  Copyright © 2016 Feng Chang. All rights reserved.
//

import UIKit
import Gloss

class FoodClient: NSObject {
    typealias Success = (success: Array<Food>) -> Void
    
    class func getFoodList(success: Success) {
        
        let Url = APIInterface.hostURL
        let params = [:]
        
        BaseHttpRequest.shareInstance.myGet(Url, parameter: params) { (response) in
            (success: response)
        }
    }
}
