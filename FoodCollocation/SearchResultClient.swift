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
        
    class func getSearchResultList(completion: (result: SearchResult?, error: MMStandardError?) -> Void) {
        
        let url = APIInterface.HOST + APIInterface.SEARCH_API + APIInterface.SEARCH_RANGE + APIInterface.APPID + APIInterface.APPKEY
        
        BaseHttpRequest.shareInstance.myGet(url) { (response, error) in
            
            guard error == nil else {
                completion(result: nil, error: error)
                return
            }
            
            var searchResult: SearchResult?
            searchResult = SearchResult.init(json: response as! Dictionary)
            completion(result: searchResult, error: error)
        }
    }
}