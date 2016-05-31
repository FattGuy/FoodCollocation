//
//  BaseHttpRequest.swift
//  FoodCollocation
//
//  Created by Feng Chang on 5/31/16.
//  Copyright © 2016 Feng Chang. All rights reserved.
//

import UIKit
import Alamofire

class BaseHttpRequest: NSObject {
   
    static let shareInstance = BaseHttpRequest()
    static let requestManager = Alamofire.Manager()
    
    typealias Response = (response: Array<Food>) -> Void
    
    func myGet(url: NSURL!, parameter: AnyObject?, response: Response) {
        BaseHttpRequest.requestManager.request(.GET, url).responseJSON { (response) in
            debugPrint(response)
        }
    }
    
}
