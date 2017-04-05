//
//  Poster.swift
//  KhoaPhamPrj
//
//  Created by khacpham on 2/21/17.
//  Copyright © 2017 oic. All rights reserved.
//

import Foundation
import UIKit

class Poster {
    var title: String
    var score: Float
    private var _thumb: UIImage
    var thumb: UIImage {
        get {
            return _thumb
        }
    }
    
    init(title:String, thumbStr: String, score:Float){
        self.title = title
        self._thumb = UIImage(named: thumbStr)!
        self.score = score
    }
}
