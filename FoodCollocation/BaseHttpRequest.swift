//
//  BaseHttpRequest.swift
//  FoodCollocation
//
//  Created by Feng Chang on 5/31/16.
//  Copyright © 2016 Feng Chang. All rights reserved.
//

import UIKit
import Alamofire
import MMErrorSwift

class BaseHttpRequest: NSObject {
   
    static let shareInstance = BaseHttpRequest()
    static let requestManager = Alamofire.Manager()
    
    func myGet(url: NSString!, completion: (response: AnyObject?, error: MMStandardError?) -> Void) {
        BaseHttpRequest.requestManager.request(.GET, url as String).responseJSON { (response) in
            do {
                let jsonData = try NSJSONSerialization.JSONObjectWithData(response.data!, options: NSJSONReadingOptions.AllowFragments)
                completion(response: jsonData as? SearchResult, error: nil)
            } catch {
                let standardError = MMErrorEngine().standardError(response)
                standardError.networkError = error as NSError
                completion(response: nil, error: response.data?.length > 0 ? standardError : nil)
            }
        }
    }
}
