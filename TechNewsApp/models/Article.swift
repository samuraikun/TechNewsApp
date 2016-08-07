//
//  Article.swift
//  TechNewsApp
//
//  Created by Kojima Yuichi on 2016/08/07.
//  Copyright © 2016年 yuxbeta. All rights reserved.
//

import UIKit
import ObjectMapper
import RealmSwift

class Article: Object, Mappable {
    dynamic var title = ""
    dynamic var link = ""
    dynamic var content = ""
    dynamic var category = ""
    
    required convenience init?(_ map: ObjectMapper.Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        title <- map["title"]
        link <- map["link"]
        content <- map["content"]
    }
    
    override class func primaryKey() -> String? {
        return "link"
    }
}