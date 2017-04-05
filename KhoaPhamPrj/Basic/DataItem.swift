//
//  DataItem.swift
//  KhoaPhamPrj
//
//  Created by khacpham on 2/21/17.
//  Copyright © 2017 oic. All rights reserved.
//

import Foundation

class DataItem {
    var title: String
    var data: Array<String>
    
    init(title:String, data: Array<String>){
        self.title = title
        self.data = data
    }
}
