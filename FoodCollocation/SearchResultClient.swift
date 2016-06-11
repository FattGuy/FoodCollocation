//
//  SearchResultClient.swift
//  FoodCollocation
//
//  Created by Feng Chang on 6/9/16.
//  Copyright © 2016 Feng Chang. All rights reserved.
//

import UIKit
import Gloss
import MMErrorSwift

class SearchResultClient: NSObject {
    
    //typealias Completion = (completion: Dictionary<String, AnyObject>?) -> Void
    
    class func getSearchResultList(completion: (result: AnyObject?, error: MMStandardError?) -> Void) {
        
        let url = APIInterface.HOST + APIInterface.SEARCH_API + APIInterface.SEARCH_RANGE + APIInterface.APPID + APIInterface.APPKEY
        
        BaseHttpRequest.shareInstance.myGet(url) { (result, error) in
            
            guard error == nil else {
                completion(result: nil, error: error)
                return
            }
            let searchResult = SearchResult()
            completion(result: searchResult, error: error)
            return
        }
    }
}