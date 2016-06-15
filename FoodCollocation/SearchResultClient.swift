//
//  SearchResultClient.swift
//  FoodCollocation
//
//  Created by Feng Chang on 6/9/16.
//  Copyright © 2016 Feng Chang. All rights reserved.
//

import UIKit
import MMErrorSwift

class SearchResultClient: NSObject {
        
    class func getSearchResultListForBeef(completion: (result: SearchResult?, error: MMStandardError?) -> Void) {
        let meat = MeatCatogory()

        let url = NSString(format: "%@", APIInterface.HOST + APIInterface.SEARCH_API + meat.beef! + APIInterface.SEARCH_RANGE + APIInterface.APPID + APIInterface.APPKEY)
        
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
    class func getSearchResultListForCabbage(completion: (result: SearchResult?, error: MMStandardError?) -> Void) {
        let vege = VegeCatogory()
        
        let url = NSString(format: "%@", APIInterface.HOST + APIInterface.SEARCH_API + vege.cabbage! + APIInterface.SEARCH_RANGE + APIInterface.APPID + APIInterface.APPKEY)
        
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
    class func getSearchResultListForRice(completion: (result: SearchResult?, error: MMStandardError?) -> Void) {
        let carb = CarbCatogory()
        
        let url = NSString(format: "%@", APIInterface.HOST + APIInterface.SEARCH_API + carb.rice! + APIInterface.SEARCH_RANGE + APIInterface.APPID + APIInterface.APPKEY)
        
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
    class func getSearchResultListForChocolate(completion: (result: SearchResult?, error: MMStandardError?) -> Void) {
        let snack = SnackCatogory()
        
        let url = NSString(format: "%@", APIInterface.HOST + APIInterface.SEARCH_API + snack.chocolate! + APIInterface.SEARCH_RANGE + APIInterface.APPID + APIInterface.APPKEY)
        
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