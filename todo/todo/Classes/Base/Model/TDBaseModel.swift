//
//  TDBaseModel.swift
//  todo
//
//  Created by HuangZhen on 2017/7/5.
//  Copyright © 2017年 Ekko. All rights reserved.
//

import UIKit

class TDBaseModel: NSObject {
    
    var controller: UIViewController?
    var dataArray: Array<Any>?
    
    required override init() {
        super.init()
        dataArray = Array()
    }
    
    func load() {
        
    }
    
}
