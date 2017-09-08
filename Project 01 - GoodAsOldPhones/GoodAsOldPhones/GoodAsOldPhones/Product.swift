//
//  Product.swift
//  GoodAsOldPhones
//
//  Created by Yunis on 2017/9/8.
//  Copyright © 2017年 Yunis. All rights reserved.
//

import Foundation

class Product {
    var name : String?
    var cellImageName : String?
    var fullscreenImageName : String?
    
    init(name : String,cellImageName:String,fullscreenImageName : String) {
        self.name = name
        self.cellImageName = cellImageName
        self.fullscreenImageName = fullscreenImageName
    }
}
