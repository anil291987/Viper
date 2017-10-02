//
//  PostModel.swift
//  Viper
//
//  Created by Anil Upadhyay on 01/09/17.
//  Copyright © 2017 Anil Upadhyay. All rights reserved.
//

import UIKit
import ObjectMapper
struct PostModel {
    var id = 0
    var title = ""
    var imageUrl = ""
    var thumbImageUrl = ""
}
extension PostModel: Mappable {
    init?(map: Map) {
        
    }
    mutating func mapping(map: Map) {
        id  <- map["id"]
        title <- map["title"]
        imageUrl <- map["imageUrl"]
        thumbImageUrl <- map["thumbUrl"]
    }
}
