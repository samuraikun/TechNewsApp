//
//  Feed.swift
//  TechNewsApp
//
//  Created by Kojima Yuichi on 2016/08/07.
//  Copyright © 2016年 yuxbeta. All rights reserved.
//

import Foundation
import ObjectMapper

class Feed: Mappable {
    var articles: [Article]?
    
    required init?(_ map: Map) {
        
    }
    
    func mapping(map: Map) {
        articles <- map["articles"]
    }
}
